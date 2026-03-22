package com.startshorts.androidplayer.ui.view.shortsV2.shortrating;

import androidx.annotation.WorkerThread;
import com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortRatingHandler.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortRatingHandler {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f47904g = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private b f47905a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f47906b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f47907c = new LinkedHashSet();
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ShortRatingLayout f47908d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private r f47909e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private r f47910f;

    /* compiled from: ShortRatingHandler.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ShortRatingHandler.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        @WorkerThread
        void a(@NotNull ShortPlayContentInfo shortPlayContentInfo);
    }

    public ShortRatingHandler(@Nullable b bVar) {
        this.f47905a = bVar;
    }

    private final void c() {
        r rVar = this.f47909e;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("ShortRatingHandler", "cancelCountDown");
        }
        this.f47909e = null;
    }

    private final void d() {
        r rVar = this.f47910f;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("ShortRatingHandler", "cancelLoadIconsJob");
        }
        this.f47910f = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(ShortRatingLayout shortRatingLayout, ShortRatingHandler shortRatingHandler) {
        shortRatingLayout.setVisibility(8);
        String str = shortRatingHandler.f47906b;
        if (str != null) {
            shortRatingHandler.f47907c.add(str);
        }
        return Unit.f60915a;
    }

    @NotNull
    public final String e(int i10, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        sb2.append('-');
        sb2.append(z10);
        return sb2.toString();
    }

    public final void f() {
        c();
        d();
        ShortRatingLayout shortRatingLayout = this.f47908d;
        if (shortRatingLayout != null) {
            shortRatingLayout.setVisibility(8);
        }
    }

    public final void g(@NotNull String shortPlayId, @NotNull ShortPlayContentInfo shortPlayContentInfo, @Nullable ShortRatingLayout shortRatingLayout) {
        ShortRatingLayout shortRatingLayout2;
        Intrinsics.checkNotNullParameter(shortPlayId, "shortPlayId");
        Intrinsics.checkNotNullParameter(shortPlayContentInfo, "shortPlayContentInfo");
        if ((Intrinsics.areEqual(this.f47906b, shortPlayId) && (shortRatingLayout2 = this.f47908d) != null && shortRatingLayout2.getVisibility() == 0) || this.f47907c.contains(shortPlayId)) {
            return;
        }
        i();
        this.f47906b = shortPlayId;
        this.f47908d = shortRatingLayout;
        this.f47910f = CoroutineUtil.l(CoroutineUtil.f48072a, "loadIcons", false, new ShortRatingHandler$loadIcons$1(shortPlayContentInfo, this, null), 2, null);
    }

    public final void h() {
        i();
        this.f47905a = null;
    }

    public final void i() {
        f();
        this.f47906b = null;
        this.f47908d = null;
        this.f47907c.clear();
    }

    public final void j(@NotNull ShortPlayContentInfo mShortPlayContentInfo) {
        Intrinsics.checkNotNullParameter(mShortPlayContentInfo, "mShortPlayContentInfo");
        final ShortRatingLayout shortRatingLayout = this.f47908d;
        if (shortRatingLayout != null) {
            shortRatingLayout.setVisibility(0);
            shortRatingLayout.w(mShortPlayContentInfo);
            c();
            this.f47909e = CoroutineUtil.g(CoroutineUtil.f48072a, qe.b.f65324a.value().getShow_rating_duration() * 1000, null, new Function0() { // from class: bk.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit k10;
                    k10 = ShortRatingHandler.k(ShortRatingLayout.this, this);
                    return k10;
                }
            }, 2, null);
        }
    }
}
