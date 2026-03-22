package of;

import android.content.Context;
import android.os.SystemClock;
import com.ss.ttvideoengine.log.VideoEventOnePlay;
import com.startshorts.androidplayer.manager.player.feature.decryptor.DecryptResult;
import com.startshorts.androidplayer.manager.player.feature.decryptor.DecryptState;
import java.io.ByteArrayInputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Iterator;
import java.util.LinkedList;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayerDecryptor.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f63193a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f63194b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f63195c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f63196d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private b f63197e;

    /* renamed from: f  reason: collision with root package name */
    private long f63198f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final LinkedList<ByteArrayInputStream> f63199g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private DecryptState f63200h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private a f63201i;

    /* renamed from: j  reason: collision with root package name */
    private final int f63202j;

    public c(@NotNull Context context, @NotNull String decryptIV) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(decryptIV, "decryptIV");
        this.f63193a = decryptIV;
        this.f63198f = -1L;
        this.f63199g = new LinkedList<>();
        this.f63202j = 1024;
    }

    private final DecryptResult a(int i10) {
        return new DecryptResult(i10, null, 2, null);
    }

    private final byte[] b(byte[] bArr, byte[] bArr2) {
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
        byte[] bytes = this.f63193a.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        cipher.init(2, secretKeySpec, new IvParameterSpec(bytes));
        byte[] doFinal = cipher.doFinal(bArr);
        Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
        return doFinal;
    }

    private final byte[] c(LinkedList<ByteArrayInputStream> linkedList, int i10) {
        byte[] bArr = new byte[i10];
        Iterator<ByteArrayInputStream> it = linkedList.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        int i11 = 0;
        while (it.hasNext()) {
            ByteArrayInputStream next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            ByteArrayInputStream byteArrayInputStream = next;
            i11 += byteArrayInputStream.read(bArr, i11, e.j(byteArrayInputStream.available(), i10 - i11));
            byteArrayInputStream.reset();
        }
        return bArr;
    }

    private final int d(LinkedList<ByteArrayInputStream> linkedList) {
        Iterator<ByteArrayInputStream> it = linkedList.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        int i10 = 0;
        while (it.hasNext()) {
            ByteArrayInputStream next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            i10 += next.available();
        }
        return i10;
    }

    private final Unit e(String str) {
        a aVar = this.f63201i;
        if (aVar != null) {
            aVar.b(str);
            return Unit.f60915a;
        }
        return null;
    }

    private final b f(byte[] bArr) {
        try {
            Charset UTF_8 = StandardCharsets.UTF_8;
            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
            String str = new String(bArr, UTF_8);
            String substring = str.substring(0, 16);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            String substring2 = str.substring(16, 20);
            Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
            int parseInt = Integer.parseInt(substring2);
            String substring3 = str.substring(parseInt, parseInt + 16);
            Intrinsics.checkNotNullExpressionValue(substring3, "substring(...)");
            String substring4 = str.substring(20, 24);
            Intrinsics.checkNotNullExpressionValue(substring4, "substring(...)");
            int parseInt2 = Integer.parseInt(substring4);
            byte[] bytes = substring3.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            return new b(substring, parseInt, bytes, parseInt2);
        } catch (Exception e10) {
            a aVar = this.f63201i;
            if (aVar != null) {
                aVar.onError("parseDecryptRule failed: " + e10.getMessage());
                return null;
            }
            return null;
        }
    }

    @NotNull
    public final DecryptResult g(@Nullable ByteBuffer byteBuffer) {
        byte[] bArr;
        if (this.f63200h == DecryptState.END) {
            return a(-2);
        }
        if (this.f63196d) {
            return a(-1);
        }
        if (this.f63194b) {
            if (byteBuffer == null) {
                return a(-1);
            }
            return new DecryptResult(byteBuffer.remaining(), byteBuffer);
        } else if (byteBuffer == null) {
            return a(-1);
        } else {
            int remaining = byteBuffer.remaining();
            byte[] bArr2 = new byte[remaining];
            byteBuffer.get(bArr2);
            if (remaining == 0) {
                return a(-1);
            }
            this.f63199g.add(new ByteArrayInputStream(bArr2));
            int d10 = d(this.f63199g);
            if (!this.f63195c) {
                int i10 = this.f63202j;
                if (d10 >= i10) {
                    this.f63197e = f(c(this.f63199g, i10));
                    e("decryptRule -> " + this.f63197e);
                    this.f63195c = true;
                }
            } else if (this.f63197e == null) {
                a aVar = this.f63201i;
                if (aVar != null) {
                    aVar.b("not need decrypt");
                }
                this.f63194b = true;
                byte[] c10 = c(this.f63199g, d10);
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(c10.length);
                allocateDirect.put(c10);
                return new DecryptResult(c10.length, allocateDirect);
            }
            b bVar = this.f63197e;
            if (bVar == null) {
                return a(-1);
            }
            if (bVar.a() + 1024 > d10) {
                return a(-1);
            }
            byte[] c11 = c(this.f63199g, d10);
            try {
                bArr = b(n.w(c11, 1024, bVar.a() + 1024), bVar.b());
            } catch (Exception e10) {
                a aVar2 = this.f63201i;
                if (aVar2 != null) {
                    aVar2.onError("decrypt failed: " + e10.getMessage());
                }
                bArr = null;
            }
            if (bArr != null) {
                this.f63194b = true;
                int length = bArr.length + ((d10 + VideoEventOnePlay.EXIT_CODE_BEFORE_FIRST_FRAME_MSG_NOT_REPORT) - bVar.a());
                byte[] bArr3 = new byte[length];
                System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
                byte[] w10 = n.w(c11, bVar.a() + 1024, d10);
                System.arraycopy(w10, 0, bArr3, bArr.length, w10.length);
                ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(length);
                allocateDirect2.put(bArr3);
                long elapsedRealtime = SystemClock.elapsedRealtime() - this.f63198f;
                e("decrypt cost " + elapsedRealtime + "ms");
                a aVar3 = this.f63201i;
                if (aVar3 != null) {
                    aVar3.a(elapsedRealtime);
                }
                return new DecryptResult(length, allocateDirect2);
            }
            return a(-1);
        }
    }

    public final void h() {
        this.f63196d = true;
        this.f63194b = false;
        this.f63197e = null;
        this.f63195c = false;
        this.f63198f = -1L;
        this.f63199g.clear();
    }

    public final void i(@Nullable a aVar) {
        this.f63201i = aVar;
    }

    public final void j(@NotNull DecryptState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        e("updateState -> " + state);
        if (state == DecryptState.START) {
            this.f63198f = SystemClock.elapsedRealtime();
        }
        this.f63200h = state;
    }
}
