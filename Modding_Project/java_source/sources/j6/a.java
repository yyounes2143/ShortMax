package j6;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyInfo;
import g6.e;
import h7.c;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: IcyDecoder.java */
/* loaded from: classes4.dex */
public final class a extends e {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f60213c = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: a  reason: collision with root package name */
    private final CharsetDecoder f60214a = c.f52595c.newDecoder();

    /* renamed from: b  reason: collision with root package name */
    private final CharsetDecoder f60215b = c.f52594b.newDecoder();

    @Nullable
    private String c(ByteBuffer byteBuffer) {
        try {
            return this.f60214a.decode(byteBuffer).toString();
        } catch (CharacterCodingException unused) {
            try {
                String charBuffer = this.f60215b.decode(byteBuffer).toString();
                this.f60215b.reset();
                byteBuffer.rewind();
                return charBuffer;
            } catch (CharacterCodingException unused2) {
                this.f60215b.reset();
                byteBuffer.rewind();
                return null;
            } catch (Throwable th2) {
                this.f60215b.reset();
                byteBuffer.rewind();
                throw th2;
            }
        } finally {
            this.f60214a.reset();
            byteBuffer.rewind();
        }
    }

    @Override // g6.e
    protected Metadata b(g6.c cVar, ByteBuffer byteBuffer) {
        String c10 = c(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (c10 == null) {
            return new Metadata(new IcyInfo(bArr, null, null));
        }
        Matcher matcher = f60213c.matcher(c10);
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
        return new Metadata(new IcyInfo(bArr, str, str2));
    }
}
