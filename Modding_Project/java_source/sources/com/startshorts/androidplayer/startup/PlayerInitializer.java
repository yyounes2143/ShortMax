package com.startshorts.androidplayer.startup;

import android.content.Context;
import androidx.startup.Initializer;
import com.bytedance.applog.IAppLogInstance;
import com.bytedance.vcloud.cacheModule.CacheSettings;
import com.pandora.common.applog.AppLogWrapper;
import com.pandora.ttlicense2.LicenseManager;
import com.ss.ttvideoengine.AppInfo;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConfig;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.startup.PlayerInitializer;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import lc.a;
import lc.c;
import mf.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlayerInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PlayerInitializer extends BaseInitializer<Object> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f44871b = new a(null);

    /* compiled from: PlayerInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void g(Context context, String str) {
        b("catchInitError -> " + str);
        try {
            LicenseManager.init(context);
        } catch (Error e10) {
            b("catchInitError -> " + e10.getMessage());
        } catch (Exception e11) {
            b("catchInitError -> " + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String h(String str, String str2, Map map) {
        try {
            pf.a aVar = pf.a.f64858a;
            Intrinsics.checkNotNull(str);
            return aVar.a(str);
        } catch (Exception unused) {
            return str;
        }
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public String c() {
        return "PlayerInitializer";
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.t(DbInitializer.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.startshorts.androidplayer.startup.PlayerInitializer, com.startshorts.androidplayer.startup.BaseInitializer] */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.content.Context, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r3v6, types: [com.bytedance.vcloud.cacheModule.CacheSettings] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x00af -> B:20:0x00be). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x00b7 -> B:20:0x00be). Please submit an issue!!! */
    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public Object e(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        GearStrategyConfig globalConfig = GearStrategy.getGlobalConfig();
        globalConfig.setIntValue(33, 6);
        GearStrategy.setGlobalConfig(globalConfig);
        TTVideoEngine.setIntValue(DataLoaderHelper.DATALOADER_KEY_INT_ENABLE_HLS, 1);
        TTVideoEngine.setIntValue(DataLoaderHelper.DATALOADER_KEY_ENABLE_HLS_PROXY, 1);
        TTVideoEngine.setIntValue(DataLoaderHelper.DATALOADER_KEY_ENABLE_REPORT_HEADERS, 1);
        TTVideoEngine.setIntValue(4, 3);
        b.f62506a.b();
        c d10 = new c.b(context).e(cf.a.f3491a.d().getAbsolutePath()).f(524288000).d();
        try {
            kc.a.s(true);
            lc.a m10 = new a.b().s(context).q(AppInfo.APP_REGION_MYA).o(context.getString(R$string.tt_player_app_id)).p(context.getString(R$string.app_name)).r("2.18.0").n(ae.a.f627a.d()).t("assets:///ttplayer/license/vod.lic").u(d10).m();
            if (ABTestFactory.f42224a.t1().isEnable().invoke().booleanValue()) {
                kc.a.j(m10);
            } else {
                kc.a.u(m10);
            }
        } catch (Error e10) {
            g(context, e10.getMessage());
        } catch (Exception e11) {
            g(context, e11.getMessage());
        }
        try {
            context = CacheSettings.getInstance();
            context.setGenerateFileKeyCallback(new CacheSettings.IGenerateFileKeyCallback() { // from class: oh.e
                @Override // com.bytedance.vcloud.cacheModule.CacheSettings.IGenerateFileKeyCallback
                public final String generateFileKey(String str, String str2, Map map) {
                    String h10;
                    h10 = PlayerInitializer.h(str, str2, map);
                    return h10;
                }
            });
        } catch (Exception e12) {
            b("setGenerateFileKeyCallback exception -> " + e12.getMessage());
        }
        i();
        return this;
    }

    public final void i() {
        IAppLogInstance appLogInstance;
        try {
            Account a02 = AccountRepo.f43052a.a0();
            if (a02 != null && (appLogInstance = AppLogWrapper.getAppLogInstance()) != null) {
                appLogInstance.setUserUniqueID(a02.getUserCode());
            }
        } catch (Exception e10) {
            b("setUserUniqueID exception -> " + e10.getMessage());
        }
    }
}
