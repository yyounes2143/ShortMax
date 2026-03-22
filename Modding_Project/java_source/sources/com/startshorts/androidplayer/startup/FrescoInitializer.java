package com.startshorts.androidplayer.startup;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.startup.Initializer;
import com.startshorts.androidplayer.startup.FrescoInitializer;
import java.util.List;
import k2.k;
import kk.b;
import kk.f;
import kk.h;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import n2.d;
import org.jetbrains.annotations.NotNull;
import r3.x;
import t3.s;
/* compiled from: FrescoInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class FrescoInitializer extends BaseInitializer<Object> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f44849b = new a(null);

    /* compiled from: FrescoInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void g(Context context) {
        s.a a10 = p3.a.a(context, h.f60762a.b());
        h(context, a10);
        l(context, a10);
        i(a10);
        k(a10);
        a10.T(true).Y(true).R(Bitmap.Config.ARGB_8888).S(b.f60744a.a());
        s.M.e().b(true);
        kk.a.c(context, a10.a());
    }

    private final void h(Context context, s.a aVar) {
        aVar.V(g2.b.m(context).p(cf.a.f3491a.c()).o("image").q(209715200L).r(104857600L).s(52428800L).n());
    }

    private final void i(s.a aVar) {
        aVar.Q(new k() { // from class: oh.a
            @Override // k2.k
            public final Object get() {
                x j10;
                j10 = FrescoInitializer.j();
                return j10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final x j() {
        int maxMemory = ((int) Runtime.getRuntime().maxMemory()) / 5;
        return new x(maxMemory, Integer.MAX_VALUE, maxMemory, Integer.MAX_VALUE, Integer.MAX_VALUE, 0L, 32, null);
    }

    private final void k(s.a aVar) {
        d b10 = d.b();
        Intrinsics.checkNotNullExpressionValue(b10, "getInstance(...)");
        b10.a(new n2.b() { // from class: oh.b
        });
        aVar.W(b10);
    }

    private final void l(Context context, s.a aVar) {
        aVar.Z(g2.b.m(context).p(cf.a.f3491a.c()).o("small_image").q(104857600L).r(52428800L).s(26214400L).n());
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public String c() {
        return "FrescoInitializer";
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.t(DataCacheInitializer.class);
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public Object e(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (f.f60747a.g()) {
            g(context);
        }
        return new Object();
    }
}
