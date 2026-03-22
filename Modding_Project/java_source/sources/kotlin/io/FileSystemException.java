package kotlin.io;

import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Exceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public class FileSystemException extends IOException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final File f61060a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final File f61061b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f61062c;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FileSystemException(@org.jetbrains.annotations.NotNull java.io.File r2, @org.jetbrains.annotations.Nullable java.io.File r3, @org.jetbrains.annotations.Nullable java.lang.String r4) {
        /*
            r1 = this;
            java.lang.String r0 = "file"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = ws.c.a(r2, r3, r4)
            r1.<init>(r0)
            r1.f61060a = r2
            r1.f61061b = r3
            r1.f61062c = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.io.FileSystemException.<init>(java.io.File, java.io.File, java.lang.String):void");
    }
}
