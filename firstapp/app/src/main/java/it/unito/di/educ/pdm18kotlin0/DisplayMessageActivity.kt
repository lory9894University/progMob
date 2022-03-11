package it.unito.di.educ.pdm18kotlin0

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.TextView

class DisplayMessageActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_display_message)
        var intent = getIntent() // ci restituisce l'intento che ha fatto partire questa attività
        var message = intent.getStringExtra(EXTRA_MESSAGE)
        // a questo punto creiamo programmaticamente una textView

        var output = TextView(this) // la view vuole il context
        output.text = message
        output.textSize = 40f
        setContentView(output)
        /* di nuovo, versione più figa sfruttando il kotlin
        var textView = TextView(this).apply {
6           textSize = 40f
7           text = intent.getStringExtra(EXTRA_MESSAGE)
8           }
            setContentView(textView)

         */
    }
}