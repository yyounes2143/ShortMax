package yf;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import com.adjust.sdk.Constants;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.log.Logger;
import fk.u;
import fk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TypefaceManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f70794a = new a();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static String f70795b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final String f70796c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final String f70797d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final String f70798e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final String f70799f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final String f70800g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final String f70801h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static Typeface f70802i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private static Typeface f70803j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static Typeface f70804k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static Typeface f70805l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static Typeface f70806m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private static Typeface f70807n;

    static {
        u uVar = u.f51776a;
        f70796c = uVar.d(R$string.typeface_bold);
        f70797d = uVar.d(R$string.typeface_semi_bold);
        f70798e = uVar.d(R$string.typeface_medium);
        f70799f = uVar.d(R$string.typeface_regular);
        f70800g = uVar.d(R$string.typeface_light);
        f70801h = uVar.d(R$string.typeface_subtitle_semi_bold);
    }

    private a() {
    }

    private final void n(Context context) {
        String str;
        if (v.f51778a.b()) {
            str = "ar";
        } else {
            str = Constants.NORMAL;
        }
        if (f70795b == null) {
            f70795b = str;
        }
        if (!Intrinsics.areEqual(f70795b, str)) {
            f70802i = null;
            f70803j = null;
            f70804k = null;
            f70805l = null;
            f70806m = null;
            f70795b = str;
            Logger logger = Logger.f41511a;
            logger.h("TypefaceManager", "loadCustomTypeface reset -> path=" + str);
        }
        AssetManager assets = context.getAssets();
        if (f70805l == null) {
            f70805l = Typeface.createFromAsset(assets, "fonts/" + str + "/regular.ttf");
        }
        if (f70802i == null) {
            f70802i = Typeface.createFromAsset(assets, "fonts/" + str + "/bold.ttf");
        }
        if (f70803j == null) {
            f70803j = Typeface.createFromAsset(assets, "fonts/" + str + "/semiBold.ttf");
        }
        if (f70804k == null) {
            f70804k = Typeface.createFromAsset(assets, "fonts/" + str + "/medium.ttf");
        }
        if (f70806m == null) {
            f70806m = Typeface.createFromAsset(assets, "fonts/" + str + "/light.ttf");
        }
    }

    @NotNull
    public final String a() {
        return f70796c;
    }

    @NotNull
    public final String b() {
        return f70800g;
    }

    @NotNull
    public final String c() {
        return f70798e;
    }

    @NotNull
    public final String d() {
        return f70799f;
    }

    @NotNull
    public final String e() {
        return f70797d;
    }

    @NotNull
    public final String f() {
        return f70801h;
    }

    @Nullable
    public final Typeface g() {
        return f70802i;
    }

    @Nullable
    public final Typeface h() {
        return f70806m;
    }

    @Nullable
    public final Typeface i() {
        return f70804k;
    }

    @Nullable
    public final Typeface j() {
        return f70805l;
    }

    @Nullable
    public final Typeface k() {
        return f70803j;
    }

    @Nullable
    public final Typeface l() {
        return f70807n;
    }

    public final synchronized void m(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            n(context);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("TypefaceManager", "loadCustomTypeface failed -> " + e10.getMessage());
        }
    }

    public final synchronized void o() {
        if (f70807n == null) {
            f70807n = Typeface.createFromAsset(u.f51776a.b().getAssets(), "fonts/subtitle/semiBold.ttf");
        }
    }
}
