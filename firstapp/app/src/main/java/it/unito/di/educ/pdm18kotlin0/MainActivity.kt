package it.unito.di.educ.pdm18kotlin0

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText

const val EXTRA_MESSAGE="it.unito.di.educ.pdm18kotlin0.MESSAGE" //non l'ho chiamata MESSAGE ma it.unito.... per avere una key univoca
class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun sendMessage(view : View){
        val intent = Intent(this,DisplayMessageActivity::class.java)
        //il primo parametro è il "context", chi ha fatto partire l'intento. il secondo parametro è l'activity che viene lanciata (ma potrebbe anche essere un'altra app)
        val edit_message = findViewById<EditText>(R.id.edit_message)
        intent.putExtra(EXTRA_MESSAGE, edit_message.text.toString())
        //tramtite l'intento mandiamo un valore (che sarà contenuto in EXTRA_MESSAGE) passandolo in edit_message (in questo caso quello che l'utente ha scritto)

        startActivity(intent)
        //sotto la versione kotliniana, migliore
        /*
        val edit_message = findViewById<EditText>(R.id.edit_message)
        val intent = Intent(this, DisplayMessageActivity::class.java).apply {
6               putExtra(EXTRA_MESSAGE, message)
7           }
        startActivity(intent)
         */
    }

}
