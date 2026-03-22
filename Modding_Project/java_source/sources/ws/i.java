package ws;

import androidx.collection.SieveCacheKt;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileReadWrite.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFileReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileReadWrite.kt\nkotlin/io/FilesKt__FileReadWriteKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,290:1\n1#2:291\n*E\n"})
/* loaded from: classes8.dex */
public class i extends g {
    public static void d(@NotNull File file, @NotNull byte[] array) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        try {
            fileOutputStream.write(array);
            Unit unit = Unit.f60915a;
            b.a(fileOutputStream, null);
        } finally {
        }
    }

    @NotNull
    public static final ByteBuffer e(int i10, @NotNull CharsetEncoder encoder) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        ByteBuffer allocate = ByteBuffer.allocate(i10 * ((int) Math.ceil(encoder.maxBytesPerChar())));
        Intrinsics.checkNotNullExpressionValue(allocate, "allocate(...)");
        return allocate;
    }

    public static final void f(@NotNull File file, @NotNull Charset charset, @NotNull Function1<? super String, Unit> action) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        Intrinsics.checkNotNullParameter(action, "action");
        n.d(new BufferedReader(new InputStreamReader(new FileInputStream(file), charset)), action);
    }

    public static final CharsetEncoder g(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "<this>");
        CharsetEncoder newEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        return newEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
    }

    @NotNull
    public static byte[] h(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if (length <= SieveCacheKt.NodeLinkMask) {
                int i10 = (int) length;
                byte[] bArr = new byte[i10];
                int i11 = i10;
                int i12 = 0;
                while (i11 > 0) {
                    int read = fileInputStream.read(bArr, i12, i11);
                    if (read < 0) {
                        break;
                    }
                    i11 -= read;
                    i12 += read;
                }
                if (i11 > 0) {
                    bArr = Arrays.copyOf(bArr, i12);
                    Intrinsics.checkNotNullExpressionValue(bArr, "copyOf(...)");
                } else {
                    int read2 = fileInputStream.read();
                    if (read2 != -1) {
                        d dVar = new d(8193);
                        dVar.write(read2);
                        a.b(fileInputStream, dVar, 0, 2, null);
                        int size = dVar.size() + i10;
                        if (size >= 0) {
                            byte[] d10 = dVar.d();
                            byte[] copyOf = Arrays.copyOf(bArr, size);
                            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                            bArr = kotlin.collections.n.h(d10, copyOf, i10, 0, dVar.size());
                        } else {
                            throw new OutOfMemoryError("File " + file + " is too big to fit in memory.");
                        }
                    }
                }
                b.a(fileInputStream, null);
                return bArr;
            }
            throw new OutOfMemoryError("File " + file + " is too big (" + length + " bytes) to fit in memory.");
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                b.a(fileInputStream, th2);
                throw th3;
            }
        }
    }

    @NotNull
    public static final List<String> i(@NotNull File file, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        final ArrayList arrayList = new ArrayList();
        f(file, charset, new Function1() { // from class: ws.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k10;
                k10 = i.k(arrayList, (String) obj);
                return k10;
            }
        });
        return arrayList;
    }

    public static /* synthetic */ List j(File file, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return i(file, charset);
    }

    public static final Unit k(ArrayList arrayList, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        arrayList.add(it);
        return Unit.f60915a;
    }

    @NotNull
    public static final String l(@NotNull File file, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        try {
            String h10 = n.h(inputStreamReader);
            b.a(inputStreamReader, null);
            return h10;
        } finally {
        }
    }

    public static /* synthetic */ String m(File file, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return l(file, charset);
    }

    public static void n(@NotNull File file, @NotNull byte[] array) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(array);
            Unit unit = Unit.f60915a;
            b.a(fileOutputStream, null);
        } finally {
        }
    }

    public static void o(@NotNull File file, @NotNull String text, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(charset, "charset");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            q(fileOutputStream, text, charset);
            Unit unit = Unit.f60915a;
            b.a(fileOutputStream, null);
        } finally {
        }
    }

    public static /* synthetic */ void p(File file, String str, Charset charset, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            charset = Charsets.UTF_8;
        }
        f.o(file, str, charset);
    }

    public static final void q(@NotNull OutputStream outputStream, @NotNull String text, @NotNull Charset charset) {
        boolean z10;
        Intrinsics.checkNotNullParameter(outputStream, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (text.length() < 16384) {
            byte[] bytes = text.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            outputStream.write(bytes);
            return;
        }
        CharsetEncoder g10 = g(charset);
        CharBuffer allocate = CharBuffer.allocate(8192);
        Intrinsics.checkNotNull(g10);
        ByteBuffer e10 = e(8192, g10);
        int i10 = 0;
        int i11 = 0;
        while (i10 < text.length()) {
            int min = Math.min(8192 - i11, text.length() - i10);
            int i12 = i10 + min;
            char[] array = allocate.array();
            Intrinsics.checkNotNullExpressionValue(array, "array(...)");
            text.getChars(i10, i12, array, i11);
            allocate.limit(min + i11);
            i11 = 1;
            if (i12 == text.length()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (g10.encode(allocate, e10, z10).isUnderflow()) {
                outputStream.write(e10.array(), 0, e10.position());
                if (allocate.position() != allocate.limit()) {
                    allocate.put(0, allocate.get());
                } else {
                    i11 = 0;
                }
                allocate.clear();
                e10.clear();
                i10 = i12;
            } else {
                throw new IllegalStateException("Check failed.");
            }
        }
    }
}
