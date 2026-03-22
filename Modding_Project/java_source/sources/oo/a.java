package oo;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.StandardCharsets;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import zm.t;
/* compiled from: IcyDecoder.java */
/* loaded from: classes8.dex */
public final class a extends ko.c {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f64327c = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: a  reason: collision with root package name */
    private final CharsetDecoder f64328a = StandardCharsets.UTF_8.newDecoder();

    /* renamed from: b  reason: collision with root package name */
    private final CharsetDecoder f64329b = StandardCharsets.ISO_8859_1.newDecoder();

    @Nullable
    private String c(ByteBuffer byteBuffer) {
        try {
            return this.f64328a.decode(byteBuffer).toString();
        } catch (CharacterCodingException unused) {
            try {
                String charBuffer = this.f64329b.decode(byteBuffer).toString();
                this.f64329b.reset();
                byteBuffer.rewind();
                return charBuffer;
            } catch (CharacterCodingException unused2) {
                this.f64329b.reset();
                byteBuffer.rewind();
                return null;
            } catch (Throwable th2) {
                this.f64329b.reset();
                byteBuffer.rewind();
                throw th2;
            }
        } finally {
            this.f64328a.reset();
            byteBuffer.rewind();
        }
    }

    @Override // ko.c
    protected t b(ko.b bVar, ByteBuffer byteBuffer) {
        String c10 = c(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (c10 == null) {
            return new t(new c(bArr, null, null));
        }
        Matcher matcher = f64327c.matcher(c10);
        String str2 = null;
        for (int i10 = 0; matcher.find(i10); i10 = matcher.end()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group != null) {
                String e10 = h7.a.e(group);
                e10.hashCode();
                if (!e10.equals("streamurl")) {
                    if (e10.equals("streamtitle")) {
                        str = group2;
                    }
                } else {
                    str2 = group2;
                }
            }
        }
        return new t(new c(bArr, str, str2));
    }
}
