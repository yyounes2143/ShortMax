package ca;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class f {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final c.i f3386q = new c.i();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Activity> f3387a;

    /* renamed from: b  reason: collision with root package name */
    public List<ca.e> f3388b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<ViewGroup> f3389c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Integer f3390d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Integer f3391e;

    /* renamed from: f  reason: collision with root package name */
    private long f3392f = 3000;

    /* renamed from: g  reason: collision with root package name */
    private long f3393g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private WeakReference<ha.a> f3394h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private e f3395i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private InterfaceC0089f f3396j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private a f3397k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private c f3398l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private b f3399m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private d f3400n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private ImageView.ScaleType f3401o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private String f3402p;

    @Metadata
    /* loaded from: classes5.dex */
    public interface a {
        void a(@NotNull List<String> list);
    }

    @Metadata
    /* loaded from: classes5.dex */
    public interface b {
        void a(@NotNull ca.d dVar);
    }

    @Metadata
    /* loaded from: classes5.dex */
    public interface c {
        void a(@NotNull ca.d dVar, @Nullable Object obj);
    }

    @Metadata
    /* loaded from: classes5.dex */
    public interface d {
        void a(@NotNull h hVar);
    }

    @Metadata
    /* loaded from: classes5.dex */
    public interface e {
        void a(@Nullable ca.d dVar, @Nullable String str);

        boolean b(@NotNull ca.d dVar);

        void c(@NotNull ca.d dVar);
    }

    @Metadata
    /* renamed from: ca.f$f  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0089f {
        void a(@NotNull ca.d dVar);

        void b(@NotNull ca.d dVar);
    }

    public final void A(long j10) {
        this.f3393g = j10;
    }

    public final void B(@Nullable d dVar) {
        this.f3400n = dVar;
    }

    public final void C(@Nullable String str) {
        this.f3402p = str;
    }

    public final void D(@Nullable e eVar) {
        this.f3395i = eVar;
    }

    public final void E(@Nullable InterfaceC0089f interfaceC0089f) {
        this.f3396j = interfaceC0089f;
    }

    @Nullable
    public final WeakReference<Activity> a() {
        return this.f3387a;
    }

    @Nullable
    public final Integer b() {
        return this.f3391e;
    }

    @Nullable
    public final WeakReference<ViewGroup> c() {
        return this.f3389c;
    }

    @Nullable
    public final a d() {
        return this.f3397k;
    }

    @Nullable
    public final Integer e() {
        return this.f3390d;
    }

    @NotNull
    public final List<ca.e> f() {
        List<ca.e> list = this.f3388b;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adUnitParams");
        return null;
    }

    @Nullable
    public final b g() {
        return this.f3399m;
    }

    @Nullable
    public final c h() {
        return this.f3398l;
    }

    @Nullable
    public final WeakReference<ha.a> i() {
        return this.f3394h;
    }

    public final long j() {
        return this.f3392f;
    }

    @Nullable
    public final ImageView.ScaleType k() {
        return this.f3401o;
    }

    public final long l() {
        return this.f3393g;
    }

    @Nullable
    public final d m() {
        return this.f3400n;
    }

    @Nullable
    public final e n() {
        return this.f3395i;
    }

    @Nullable
    public final InterfaceC0089f o() {
        return this.f3396j;
    }

    public final void p() {
        this.f3387a = null;
        this.f3395i = null;
        this.f3396j = null;
        this.f3398l = null;
        this.f3399m = null;
        this.f3394h = null;
    }

    public final void q(@Nullable WeakReference<Activity> weakReference) {
        this.f3387a = weakReference;
    }

    public final void r(@Nullable Integer num) {
        this.f3391e = num;
    }

    public final void s(@Nullable WeakReference<ViewGroup> weakReference) {
        this.f3389c = weakReference;
    }

    public final void t(@Nullable a aVar) {
        this.f3397k = aVar;
    }

    @NotNull
    public String toString() {
        return "AdRequestParam(" + f() + ')';
    }

    public final void u(@Nullable Integer num) {
        this.f3390d = num;
    }

    public final void v(@NotNull List<ca.e> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f3388b = list;
    }

    public final void w(@Nullable b bVar) {
        this.f3399m = bVar;
    }

    public final void x(@Nullable c cVar) {
        this.f3398l = cVar;
    }

    public final void y(@Nullable WeakReference<ha.a> weakReference) {
        this.f3394h = weakReference;
    }

    public final void z(long j10) {
        this.f3392f = j10;
    }
}
