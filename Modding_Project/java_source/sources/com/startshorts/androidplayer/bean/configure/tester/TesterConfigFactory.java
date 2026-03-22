package com.startshorts.androidplayer.bean.configure.tester;

import android.content.Context;
import android.content.Intent;
import at.n;
import com.startshorts.androidplayer.bean.configure.ConfigOptionsForTester;
import com.startshorts.androidplayer.bean.configure.tester.TesterConfigFactory;
import com.startshorts.androidplayer.manager.push.TestPushManager;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager;
import dd.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import ud.b;
import uh.i0;
import uh.l1;
/* compiled from: TesterConfigFactory.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTesterConfigFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TesterConfigFactory.kt\ncom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,174:1\n1#2:175\n*E\n"})
/* loaded from: classes6.dex */
public final class TesterConfigFactory {
    @NotNull
    public static final TesterConfigFactory INSTANCE;
    @NotNull
    private static final String TAG = "TesterConfigFactory";
    @NotNull
    private static final LoadingTimeConfig actLoadingTimeConfig;
    @NotNull
    private static final LoadingTimeConfig adLoadingTimeConfig;
    @NotNull
    private static final List<ConfigOptionsForTester> mConfigsList;
    private static boolean preloadAdEnable;

    /* compiled from: TesterConfigFactory.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class LoadingTimeConfig {
        @NotNull
        private final String cacheKey;

        public LoadingTimeConfig(@NotNull String cacheKey) {
            Intrinsics.checkNotNullParameter(cacheKey, "cacheKey");
            this.cacheKey = cacheKey;
        }

        @Nullable
        public final Object delayForTest(@NotNull c<? super Unit> cVar) {
            return Unit.f60915a;
        }

        public final int getLoadingTime() {
            return k.f50341a.getInt(this.cacheKey, 0);
        }

        public final void setLoadingTime(int i10) {
            k.f50341a.putInt(this.cacheKey, i10);
        }
    }

    static {
        TesterConfigFactory testerConfigFactory = new TesterConfigFactory();
        INSTANCE = testerConfigFactory;
        mConfigsList = new ArrayList();
        preloadAdEnable = true;
        adLoadingTimeConfig = new LoadingTimeConfig("test_config_ad_min_loading_time");
        actLoadingTimeConfig = new LoadingTimeConfig("test_config_act_min_loading_time");
        testerConfigFactory.createOptionsForTester("URL_API", p0.m(ms.k.a("noflow", ""), ms.k.a("gray", ""), ms.k.a("api", "")), new n() { // from class: td.a
            @Override // at.n
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                Unit _init_$lambda$1;
                _init_$lambda$1 = TesterConfigFactory._init_$lambda$1((Context) obj, (ConfigOptionsForTester) obj2, (String) obj3);
                return _init_$lambda$1;
            }
        });
        testerConfigFactory.createOptionsForTester("广告预加载", p0.m(ms.k.a("启用", ""), ms.k.a("禁用", "")), new n() { // from class: td.b
            @Override // at.n
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                Unit _init_$lambda$2;
                _init_$lambda$2 = TesterConfigFactory._init_$lambda$2((Context) obj, (ConfigOptionsForTester) obj2, (String) obj3);
                return _init_$lambda$2;
            }
        });
        testerConfigFactory.createOptionsForTester("切换成新账号", p0.m(ms.k.a("切换", ""), ms.k.a("取消", "")), new n() { // from class: td.c
            @Override // at.n
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                Unit _init_$lambda$4;
                _init_$lambda$4 = TesterConfigFactory._init_$lambda$4((Context) obj, (ConfigOptionsForTester) obj2, (String) obj3);
                return _init_$lambda$4;
            }
        });
        testerConfigFactory.createOptionsForTester("清除所有下载数据", p0.m(ms.k.a("清除", ""), ms.k.a("取消", "")), new n() { // from class: td.d
            @Override // at.n
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                Unit _init_$lambda$5;
                _init_$lambda$5 = TesterConfigFactory._init_$lambda$5((Context) obj, (ConfigOptionsForTester) obj2, (String) obj3);
                return _init_$lambda$5;
            }
        });
        testerConfigFactory.createOptionsForTester("清除所有的字幕文件", p0.m(ms.k.a("清除", ""), ms.k.a("取消", "")), new n() { // from class: td.e
            @Override // at.n
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                Unit _init_$lambda$6;
                _init_$lambda$6 = TesterConfigFactory._init_$lambda$6((Context) obj, (ConfigOptionsForTester) obj2, (String) obj3);
                return _init_$lambda$6;
            }
        });
        testerConfigFactory.createOptionsForTester("测试push", p0.m(ms.k.a("expiring_soon", "bonunsWillExpiry:奖励即将过期"), ms.k.a("check_in_alert", "CheckIn:签到提醒"), ms.k.a("customer:H5", "Customer:自定义H5"), ms.k.a("customer:Short", "Customer:自定义短剧"), ms.k.a("miss_check_in", "MissingCheckIn：错过自动签到"), ms.k.a("reel_update", "NewShort：新剧上新"), ms.k.a("active_push", "RecommendShort：固定推送"), ms.k.a("start_charging", "StartRecharging：诱导收费"), ms.k.a("subscribe", "SubBonus：订阅登录")), new n() { // from class: td.f
            @Override // at.n
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                Unit _init_$lambda$7;
                _init_$lambda$7 = TesterConfigFactory._init_$lambda$7((Context) obj, (ConfigOptionsForTester) obj2, (String) obj3);
                return _init_$lambda$7;
            }
        });
    }

    private TesterConfigFactory() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$1(Context context, ConfigOptionsForTester configOptionsForTester, String selectedValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configOptionsForTester, "<unused var>");
        Intrinsics.checkNotNullParameter(selectedValue, "selectedValue");
        if (Intrinsics.areEqual(selectedValue, "api")) {
            b.f68412a.I2("api");
        } else if (Intrinsics.areEqual(selectedValue, "gray")) {
            b.f68412a.I2("api-gray");
        } else {
            b.f68412a.I2("api-noflow");
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$2(Context context, ConfigOptionsForTester configOptionsForTester, String selectedValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configOptionsForTester, "<unused var>");
        Intrinsics.checkNotNullParameter(selectedValue, "selectedValue");
        preloadAdEnable = Intrinsics.areEqual(selectedValue, "启用");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$4(final Context context, ConfigOptionsForTester configOptionsForTester, String selectedValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configOptionsForTester, "<unused var>");
        Intrinsics.checkNotNullParameter(selectedValue, "selectedValue");
        if (Intrinsics.areEqual(selectedValue, "切换")) {
            AccountRepo.f43052a.T(context, new Function0() { // from class: td.g
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit lambda$4$lambda$3;
                    lambda$4$lambda$3 = TesterConfigFactory.lambda$4$lambda$3(context);
                    return lambda$4$lambda$3;
                }
            });
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$5(Context context, ConfigOptionsForTester configOptionsForTester, String selectedValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configOptionsForTester, "<unused var>");
        Intrinsics.checkNotNullParameter(selectedValue, "selectedValue");
        if (Intrinsics.areEqual(selectedValue, "清除") && !i0.f68447a.b()) {
            DownloadEpisodeManager.f45066a.t();
            l1.f68455a.g();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$6(Context context, ConfigOptionsForTester configOptionsForTester, String selectedValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configOptionsForTester, "<unused var>");
        Intrinsics.checkNotNullParameter(selectedValue, "selectedValue");
        if (Intrinsics.areEqual(selectedValue, "清除") && !i0.f68447a.b()) {
            l1.f68455a.g();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$7(Context context, ConfigOptionsForTester configOptionsForTester, String selectedValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configOptionsForTester, "<unused var>");
        Intrinsics.checkNotNullParameter(selectedValue, "selectedValue");
        switch (selectedValue.hashCode()) {
            case -1772098039:
                if (selectedValue.equals("customer:H5")) {
                    TestPushManager.f42844a.b(PushType.CUSTOM, "h5");
                    break;
                }
                break;
            case -1235159137:
                if (selectedValue.equals("miss_check_in")) {
                    TestPushManager.f42844a.b(PushType.MISS_CHECK_IN, "");
                    break;
                }
                break;
            case -1051435853:
                if (selectedValue.equals("active_push")) {
                    TestPushManager.f42844a.b(PushType.RECOMMEND_SHORTS, "");
                    break;
                }
                break;
            case -831677010:
                if (selectedValue.equals("start_charging")) {
                    TestPushManager.f42844a.b(PushType.START_RECHARGING, "");
                    break;
                }
                break;
            case -108183783:
                if (selectedValue.equals("check_in_alert")) {
                    TestPushManager.f42844a.b(PushType.CHECK_IN, "");
                    break;
                }
                break;
            case 488296830:
                if (selectedValue.equals("expiring_soon")) {
                    TestPushManager.f42844a.b(PushType.BONUS_WILL_EXPIRED, "");
                    break;
                }
                break;
            case 514841930:
                if (selectedValue.equals("subscribe")) {
                    TestPushManager.f42844a.b(PushType.SUBS_BONUS, "");
                    break;
                }
                break;
            case 1177110976:
                if (selectedValue.equals("customer:Short")) {
                    TestPushManager.f42844a.b(PushType.CUSTOM, "short");
                    break;
                }
                break;
            case 1883253390:
                if (selectedValue.equals("reel_update")) {
                    TestPushManager.f42844a.b(PushType.NEW_SHORTS, "");
                    break;
                }
                break;
        }
        return Unit.f60915a;
    }

    private final ConfigOptionsForTester createOptionsForTester(String str, Map<String, String> map, final n<? super Context, ? super ConfigOptionsForTester, ? super String, Unit> nVar) {
        final ConfigOptionsForTester configOptionsForTester = new ConfigOptionsForTester();
        configOptionsForTester.setTitle(str);
        configOptionsForTester.setOptions(map);
        mConfigsList.add(configOptionsForTester);
        configOptionsForTester.setAfterNotABSelected(new Function1() { // from class: td.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit createOptionsForTester$lambda$10$lambda$9;
                createOptionsForTester$lambda$10$lambda$9 = TesterConfigFactory.createOptionsForTester$lambda$10$lambda$9(n.this, configOptionsForTester, (Context) obj);
                return createOptionsForTester$lambda$10$lambda$9;
            }
        });
        return configOptionsForTester;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createOptionsForTester$lambda$10$lambda$9(n nVar, ConfigOptionsForTester configOptionsForTester, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String selectedValue = configOptionsForTester.getSelectedValue();
        if (selectedValue == null) {
            selectedValue = "";
        }
        nVar.invoke(context, configOptionsForTester, selectedValue);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit lambda$4$lambda$3(Context context) {
        context.startActivity(new Intent(context, MainActivity.class));
        return Unit.f60915a;
    }

    @NotNull
    public final List<ConfigOptionsForTester> allConfigs() {
        return mConfigsList;
    }

    @NotNull
    public final LoadingTimeConfig getActLoadingTimeConfig() {
        return actLoadingTimeConfig;
    }

    @NotNull
    public final LoadingTimeConfig getAdLoadingTimeConfig() {
        return adLoadingTimeConfig;
    }

    @Nullable
    public final ConfigOptionsForTester getConfigByTitle(@NotNull String title) {
        Object obj;
        Intrinsics.checkNotNullParameter(title, "title");
        Iterator<T> it = mConfigsList.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((ConfigOptionsForTester) obj).getTitle(), title)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        return (ConfigOptionsForTester) obj;
    }

    public final boolean getPreloadAdEnable() {
        return preloadAdEnable;
    }

    public final void setPreloadAdEnable(boolean z10) {
        preloadAdEnable = z10;
    }
}
