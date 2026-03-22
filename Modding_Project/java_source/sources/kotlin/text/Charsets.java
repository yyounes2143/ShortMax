package kotlin.text;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Charsets.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Charsets {
    @NotNull
    public static final Charset UTF_8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Charsets f61156a = new Charsets();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f61157b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Charset f61158c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final Charset f61159d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final Charset f61160e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final Charset f61161f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static volatile Charset f61162g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static volatile Charset f61163h;

    static {
        Charset forName = Charset.forName("UTF-8");
        Intrinsics.checkNotNullExpressionValue(forName, "forName(...)");
        UTF_8 = forName;
        Charset forName2 = Charset.forName(C.UTF16_NAME);
        Intrinsics.checkNotNullExpressionValue(forName2, "forName(...)");
        f61157b = forName2;
        Charset forName3 = Charset.forName("UTF-16BE");
        Intrinsics.checkNotNullExpressionValue(forName3, "forName(...)");
        f61158c = forName3;
        Charset forName4 = Charset.forName("UTF-16LE");
        Intrinsics.checkNotNullExpressionValue(forName4, "forName(...)");
        f61159d = forName4;
        Charset forName5 = Charset.forName(C.ASCII_NAME);
        Intrinsics.checkNotNullExpressionValue(forName5, "forName(...)");
        f61160e = forName5;
        Charset forName6 = Charset.forName("ISO-8859-1");
        Intrinsics.checkNotNullExpressionValue(forName6, "forName(...)");
        f61161f = forName6;
    }

    private Charsets() {
    }

    @NotNull
    public final Charset a() {
        Charset charset = f61163h;
        if (charset == null) {
            Charset forName = Charset.forName("UTF-32BE");
            Intrinsics.checkNotNullExpressionValue(forName, "forName(...)");
            f61163h = forName;
            return forName;
        }
        return charset;
    }

    @NotNull
    public final Charset b() {
        Charset charset = f61162g;
        if (charset == null) {
            Charset forName = Charset.forName("UTF-32LE");
            Intrinsics.checkNotNullExpressionValue(forName, "forName(...)");
            f61162g = forName;
            return forName;
        }
        return charset;
    }
}
