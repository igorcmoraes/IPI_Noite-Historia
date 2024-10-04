const { validarSenha, validarRepeticaoSenha, validarIdade, validarFormulario } = require('./cadastro')

it('Teste de senha com regas corretas', () => {
    expect(validarSenha('ab1')).toBe(true);
});
it('Teste de senha errada com menos de 3 caracteres', () => {
    expect(validarSenha('a1')).toBe(false);
});
it('Teste de senha errada faltando numero', () => {
    expect(validarSenha('aaa')).toBe(false);
});
it('Teste de senha errada faltando letra', () => {
    expect(validarSenha('121')).toBe(false);
});
it('Teste repetir senha correto', () => {
    expect(validarRepeticaoSenha('ab1', 'ab1')).toBe(true);
});
it('Teste repetir senha errado', () => {
    expect(validarRepeticaoSenha('abc', 'ab1')).toBe(false);
});
it('Teste de idade maior de 18', () => {
    expect(validarIdade(18)).toBe(true);
});
it('Teste de idade menor de 18', () => {
    expect(validarIdade(17)).toBe(false);

});

