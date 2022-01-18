require 'fileutils'

if Dir.getwd == "/home/webtech/Documents"
    if Dir.exists?("Diretorio01") == false 
        Dir.mkdir("Diretorio01")
    else
        p "1 - Este diretorio já existe"
    end

    if Dir.exists?("Diretorio02") == false
        Dir.mkdir("Diretorio02")
    else
        p "2 - Este diretorio já existe"
    end
end

Dir.chdir("/home/webtech/Documents/Diretorio01")

aFile = File.new("texto.txt", "w+")
if aFile
    aFile.syswrite("Arquivo criado em 18/01/22")
else
    p "Erro ao criar arquivo"
end

FileUtils.mv('/home/webtech/Documents/Diretorio01/texto.txt', '/home/webtech/Documents/Diretorio02')









