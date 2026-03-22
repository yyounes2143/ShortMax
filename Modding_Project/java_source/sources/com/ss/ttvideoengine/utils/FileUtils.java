package com.ss.ttvideoengine.utils;

import androidx.annotation.NonNull;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
/* loaded from: classes6.dex */
public class FileUtils {
    public static void checkAndMkdir(@NonNull File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    @NonNull
    public static String readString(@NonNull File file) {
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb2.append(readLine);
            }
            bufferedReader.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return sb2.toString();
    }
}
