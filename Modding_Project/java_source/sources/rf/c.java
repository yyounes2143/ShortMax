package rf;

import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.service.miniwindow.ImmersionMiniWindow;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NotificationNavigatorCache.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f65843a = new c();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f65844b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f65845c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f65846d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static ImmersionParams f65847e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static ImmersionParams f65848f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static ShortsEpisode f65849g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static String f65850h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static String f65851i;

    /* renamed from: j  reason: collision with root package name */
    private static boolean f65852j;

    /* renamed from: k  reason: collision with root package name */
    private static boolean f65853k;

    /* renamed from: l  reason: collision with root package name */
    private static boolean f65854l;

    /* renamed from: m  reason: collision with root package name */
    private static boolean f65855m;

    /* renamed from: n  reason: collision with root package name */
    private static boolean f65856n;

    /* renamed from: o  reason: collision with root package name */
    private static boolean f65857o;

    /* renamed from: p  reason: collision with root package name */
    private static boolean f65858p;

    /* renamed from: q  reason: collision with root package name */
    private static boolean f65859q;

    private c() {
    }

    public final void A(boolean z10) {
        f65853k = z10;
    }

    public final void B(boolean z10) {
        f65854l = z10;
    }

    public final void C(boolean z10) {
        f65845c = z10;
    }

    public final void D(boolean z10) {
        f65859q = z10;
    }

    public final void E(boolean z10) {
        f65856n = z10;
    }

    public final void F(boolean z10) {
        f65855m = z10;
    }

    public final void G(boolean z10) {
        f65852j = z10;
    }

    public final void a() {
        f65844b = false;
        f65846d = false;
        u(null);
        f65849g = null;
        f65850h = null;
        f65851i = null;
        f65852j = false;
        f65856n = false;
        f65857o = false;
        f65858p = false;
        f65855m = false;
        f65854l = false;
        f65853k = false;
        f65859q = false;
    }

    @Nullable
    public final String b() {
        return f65850h;
    }

    @Nullable
    public final String c() {
        return f65851i;
    }

    @Nullable
    public final ImmersionParams d() {
        return f65848f;
    }

    @Nullable
    public final ImmersionParams e() {
        return f65847e;
    }

    @Nullable
    public final ShortsEpisode f() {
        return f65849g;
    }

    public final boolean g() {
        return f65857o;
    }

    public final boolean h() {
        return f65846d;
    }

    public final boolean i() {
        return f65844b;
    }

    public final boolean j() {
        return f65858p;
    }

    public final boolean k() {
        return f65853k;
    }

    public final boolean l() {
        return f65854l;
    }

    public final boolean m() {
        return f65845c;
    }

    public final boolean n() {
        return f65859q;
    }

    public final boolean o() {
        return f65856n;
    }

    public final boolean p() {
        return f65855m;
    }

    public final boolean q() {
        return f65852j;
    }

    public final void r(@Nullable String str) {
        f65850h = str;
    }

    public final void s(@Nullable String str) {
        f65851i = str;
    }

    public final void t(@Nullable ImmersionParams immersionParams) {
        f65848f = immersionParams;
        if (immersionParams != null) {
            ImmersionMiniWindow.J.e(null);
        }
    }

    public final void u(@Nullable ImmersionParams immersionParams) {
        f65847e = immersionParams;
        if (immersionParams != null) {
            ImmersionMiniWindow.J.e(null);
        }
    }

    public final void v(@Nullable ShortsEpisode shortsEpisode) {
        f65849g = shortsEpisode;
    }

    public final void w(boolean z10) {
        f65857o = z10;
    }

    public final void x(boolean z10) {
        f65846d = z10;
    }

    public final void y(boolean z10) {
        f65844b = z10;
    }

    public final void z(boolean z10) {
        f65858p = z10;
    }
}
