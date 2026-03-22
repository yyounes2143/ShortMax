package com.bytedance.vcloud.cacheModule.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
/* loaded from: classes3.dex */
public class FileUtils {
    public static boolean createFile(String str) {
        try {
            return new File(str).createNewFile();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean deleteFile(String str) {
        try {
            return new File(str).delete();
        } catch (Exception unused) {
            return false;
        }
    }

    public static long getFileSize(String str) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            return file.length();
        }
        return -1L;
    }

    public static boolean isDirExists(String str) {
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            return true;
        }
        return false;
    }

    public static boolean isFileExists(String str) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            return true;
        }
        return false;
    }

    public static String readStringContent(String str) {
        FileInputStream fileInputStream;
        File file = new File(str);
        FileInputStream fileInputStream2 = null;
        if (file.exists() && file.isFile()) {
            StringBuilder sb2 = new StringBuilder();
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read != -1) {
                            sb2.append(new String(bArr, 0, read));
                        } else {
                            try {
                                break;
                            } catch (IOException e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                    fileInputStream.close();
                    return sb2.toString();
                } catch (Exception unused) {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                fileInputStream = null;
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return null;
    }

    public static boolean write(String str, String str2) {
        FileWriter fileWriter;
        FileWriter fileWriter2 = null;
        try {
            try {
                fileWriter = new FileWriter(new File(str));
            } catch (IOException e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fileWriter.write(str2);
            try {
                fileWriter.close();
                return true;
            } catch (IOException e11) {
                e11.printStackTrace();
                return true;
            }
        } catch (IOException e12) {
            e = e12;
            fileWriter2 = fileWriter;
            e.printStackTrace();
            if (fileWriter2 != null) {
                try {
                    fileWriter2.close();
                    return false;
                } catch (IOException e13) {
                    e13.printStackTrace();
                    return false;
                }
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileWriter2 = fileWriter;
            if (fileWriter2 != null) {
                try {
                    fileWriter2.close();
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
            }
            throw th;
        }
    }
}
