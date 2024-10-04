//  const form = document.getElementById('cadastroForm');
//  const senhaInput = document.getElementById('senha');
//  const confirmarSenhaInput = document.getElementById('confirmarSenha');
//  const idadeInput = document.getElementById('idade');
//  const estadoSelect = document.getElementById('estado');
//  const cidadeSelect = document.getElementById('cidade');
// Validação da senha
function validarSenha(senha) {
    const minCaracteres = 3;
    const temLetra = /[a-z]/.test(senha);
    const temNumero = /\d/.test(senha);
    return senha.length >= minCaracteres && temLetra && temNumero;
}

// Validação da repetição de senha
function validarRepeticaoSenha(senha, confirmarSenha) {
    if(senha!==confirmarSenha){
        //window.alert="As senhas não coicidem."
        return false;

    }else{
        //window.alert="As senhas coicidem"
    }
    return true;
}

// Bloqueio de envio para menores de 18 anos
function validarIdade(idade) {
    if(idade < 18){
        //alert="Site proibido para menores de 18 anos"
        return false;
    }
    if(idade >= 18){
        //alert="Idade valida"
        return true;
    }
    
}

// Atualização das cidades com base no estado selecionado
function atualizarCidades() {
    const cidades = {
        SP: ["São Paulo", "Campinas", "Santos"],
        RJ: ["Rio de Janeiro", "Niterói", "Petrópolis"],
        MG: ["Belo Horizonte", "Uberlândia", "Ouro Preto"],
        ES: ["Vitória", "Vila Velha", "Guarapari"]
    };

    const estado = estadoSelect.value;
    cidadeSelect.innerHTML = '<option value="">Selecione</option>';

    if (estado) {
        cidades[estado].forEach(cidade => {
            const option = document.createElement('option');
            option.value = cidade;
            option.textContent = cidade;
            cidadeSelect.appendChild(option);
        });
        cidadeSelect.disabled = false;
    } else {
        cidadeSelect.disabled = true;
    }
}

// Função geral de validação do formulário
function validarFormulario(event) {
    //event.preventDefault(); // Previne o envio do formulário

    if (validarSenha
        //(senha)
    ) {
       // alert('A senha deve ter no mínimo 8 caracteres, incluindo uma letra e um número.');
        //return false;
    }

    if (validarRepeticaoSenha
        //(confirmarSenha)
    ) {
        //alert('As senhas não coincidem.');
        return false;
    }

    if (validarIdade
        //(idade)
    ) {
       // alert('Você deve ter no mínimo 18 anos para se cadastrar.');
        return false;
    } else {
        document.addEventListener("click", () => {
            alert("Cadastro realizado!")
        })
    }
}

// form.addEventListener('submit', validarFormulario);
// estadoSelect.addEventListener('change', atualizarCidades);

module.exports = { validarSenha, validarRepeticaoSenha, validarIdade, validarFormulario };