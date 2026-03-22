package com.facebook.common.file;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import k2.h;
/* loaded from: classes3.dex */
public class FileUtils {

    /* loaded from: classes3.dex */
    public static class CreateDirectoryException extends IOException {
        public CreateDirectoryException(String str) {
            super(str);
        }

        public CreateDirectoryException(String str, Throwable th2) {
            super(str);
            initCause(th2);
        }
    }

    /* loaded from: classes3.dex */
    public static class FileDeleteException extends IOException {
        public FileDeleteException(String str) {
            super(str);
        }
    }

    /* loaded from: classes3.dex */
    public static class ParentDirNotFoundException extends FileNotFoundException {
        public ParentDirNotFoundException(String str) {
            super(str);
        }
    }

    /* loaded from: classes3.dex */
    public static class RenameException extends IOException {
        public RenameException(String str, Throwable th2) {
            super(str);
            initCause(th2);
        }
    }

    public static void a(File file) throws CreateDirectoryException {
        if (file.exists()) {
            if (file.isDirectory()) {
                return;
            }
            if (!file.delete()) {
                throw new CreateDirectoryException(file.getAbsolutePath(), new FileDeleteException(file.getAbsolutePath()));
            }
        }
        if (!file.mkdirs() && !file.isDirectory()) {
            throw new CreateDirectoryException(file.getAbsolutePath());
        }
    }

    public static void b(File file, File file2) throws RenameException {
        Throwable fileDeleteException;
        h.g(file);
        h.g(file2);
        file2.delete();
        if (file.renameTo(file2)) {
            return;
        }
        if (!file2.exists()) {
            if (file.getParentFile().exists()) {
                if (!file.exists()) {
                    fileDeleteException = new FileNotFoundException(file.getAbsolutePath());
                } else {
                    fileDeleteException = null;
                }
            } else {
                fileDeleteException = new ParentDirNotFoundException(file.getAbsolutePath());
            }
        } else {
            fileDeleteException = new FileDeleteException(file2.getAbsolutePath());
        }
        throw new RenameException("Unknown error renaming " + file.getAbsolutePath() + " to " + file2.getAbsolutePath(), fileDeleteException);
    }
}
