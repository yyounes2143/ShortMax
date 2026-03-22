package com.startshorts.androidplayer.manager.configure.ad;

import android.content.Context;
import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.startshorts.androidplayer.manager.configure.AppConfigureUtil;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import de.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdmobAdUnitIdConfigure.kt */
@Metadata
/* loaded from: classes6.dex */
public final class e extends BaseAdUnitIdConfigure {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f42347e = new a(null);

    /* compiled from: AdmobAdUnitIdConfigure.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // me.b
    @Nullable
    public Object b(@NotNull rs.c<? super Unit> cVar) {
        String b10 = n.f50362a.b();
        if (ABTestFactory.f42224a.G0().isEnable().invoke().booleanValue()) {
            b10 = "admob_adUnitId_android_dev_test";
        }
        Object h10 = AppConfigureUtil.f42209a.h(b10, this, cVar);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    @Nullable
    public Object d(@NotNull Context context, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = AppConfigureUtil.f42209a.g(context, n.f50362a.b(), this, cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure
    @NotNull
    public AdAggregatedSdk g() {
        return AdAggregatedSdk.ADMOB;
    }

    @Override // com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure
    @NotNull
    public String p() {
        return "AdmobAdUnitIdConfigure";
    }
}
