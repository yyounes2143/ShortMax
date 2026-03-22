package gh;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import ca.k;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.configure.ConfigOptionsForTester;
import com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig;
import com.startshorts.androidplayer.bean.configure.tester.TesterConfigFactory;
import com.startshorts.androidplayer.bean.settings.AppSettings;
import com.startshorts.androidplayer.db.repository.EventRepository;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: SettingsLocalDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSettingsLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsLocalDS.kt\ncom/startshorts/androidplayer/repo/settings/SettingsLocalDS\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1863#2,2:84\n774#2:86\n865#2,2:87\n1053#2:89\n1863#2,2:90\n*S KotlinDebug\n*F\n+ 1 SettingsLocalDS.kt\ncom/startshorts/androidplayer/repo/settings/SettingsLocalDS\n*L\n70#1:84,2\n73#1:86\n73#1:87,2\n73#1:89\n73#1:90,2\n*E\n"})
/* loaded from: classes7.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f52357a = new a(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i<Boolean> f52358b = kotlin.c.b(new Function0() { // from class: gh.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            boolean b10;
            b10 = b.b();
            return Boolean.valueOf(b10);
        }
    });

    /* compiled from: SettingsLocalDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a() {
            return ((Boolean) b.f52358b.getValue()).booleanValue();
        }

        private a() {
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 SettingsLocalDS.kt\ncom/startshorts/androidplayer/repo/settings/SettingsLocalDS\n*L\n1#1,102:1\n73#2:103\n*E\n"})
    /* renamed from: gh.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0753b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            String str;
            ConfigOptionsForTester optionsForTester = ((ABTestConfig) t10).getOptionsForTester();
            String str2 = null;
            if (optionsForTester != null) {
                str = optionsForTester.getTitle();
            } else {
                str = null;
            }
            ConfigOptionsForTester optionsForTester2 = ((ABTestConfig) t11).getOptionsForTester();
            if (optionsForTester2 != null) {
                str2 = optionsForTester2.getTitle();
            }
            return ps.a.a(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b() {
        String a10 = id.a.f53392a.a();
        if (!Intrinsics.areEqual(a10, "release") && !Intrinsics.areEqual(a10, "gray")) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<AppSettings> d(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ArrayList arrayList = new ArrayList();
        String i10 = TimeUtil.f48175a.i(DeviceUtil.f48146a.K());
        String string = context.getString(R$string.settings_fragment_personal);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        arrayList.add(new AppSettings(-2, string, null, 4, null));
        String string2 = context.getString(R$string.settings_fragment_account_info);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        arrayList.add(new AppSettings(1, string2, null, 4, null));
        if (ud.a.f68411a.k() == 1) {
            String string3 = context.getString(R$string.settings_fragment_account_switching);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            arrayList.add(new AppSettings(8, string3, null, 4, null));
        }
        arrayList.add(new AppSettings(-1, null, null, 6, null));
        String string4 = context.getString(R$string.settings_fragment_permissions);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        arrayList.add(new AppSettings(-2, string4, null, 4, null));
        String string5 = context.getString(R$string.settings_fragment_automatic_episode_unlock);
        Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
        arrayList.add(new AppSettings(2, string5, null, 4, null));
        if (ABTestFactory.f42224a.o1().isEnable().invoke().booleanValue()) {
            String string6 = context.getString(R$string.settings_fragment_pip_mode);
            Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
            arrayList.add(new AppSettings(7, string6, null, 4, null));
        }
        arrayList.add(new AppSettings(-1, null, null, 6, null));
        String string7 = context.getString(R$string.settings_fragment_else);
        Intrinsics.checkNotNullExpressionValue(string7, "getString(...)");
        arrayList.add(new AppSettings(-2, string7, null, 4, null));
        String string8 = context.getString(R$string.settings_fragment_privacy_policy);
        Intrinsics.checkNotNullExpressionValue(string8, "getString(...)");
        arrayList.add(new AppSettings(4, string8, null, 4, null));
        String string9 = context.getString(R$string.settings_fragment_user_agreement);
        Intrinsics.checkNotNullExpressionValue(string9, "getString(...)");
        arrayList.add(new AppSettings(5, string9, null, 4, null));
        if (AccountRepo.f43052a.J0()) {
            String string10 = context.getString(R$string.settings_fragment_delete_account);
            Intrinsics.checkNotNullExpressionValue(string10, "getString(...)");
            arrayList.add(new AppSettings(6, string10, null, 4, null));
        }
        if (f52357a.a()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("沉浸页 A 看广告次数: ");
            ud.b bVar = ud.b.f68412a;
            sb2.append(bVar.j(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, i10));
            arrayList.add(new AppSettings(10003, sb2.toString(), null, 4, null));
            arrayList.add(new AppSettings(10004, "沉浸页 C 看广告次数: " + bVar.j("C", i10), null, 4, null));
            arrayList.add(new AppSettings(10005, "沉浸页 B 已弹窗次数: " + bVar.i("B", i10), null, 4, null));
            arrayList.add(new AppSettings(10002, "DEBUG INFO", null, 4, null));
            arrayList.add(new AppSettings(10000, "Firebase crash 测试", null, 4, null));
            arrayList.add(new AppSettings(10001, "RoutingActivity 测试", null, 4, null));
            String B = AdManager.f41600a.B();
            arrayList.add(new AppSettings(30000, B + ":V" + k.f3414a.c() + " tools", null, 4, null));
            arrayList.add(new AppSettings(30001, "打开某一部剧", null, 4, null));
            for (ConfigOptionsForTester configOptionsForTester : TesterConfigFactory.INSTANCE.allConfigs()) {
                arrayList.add(new AppSettings(20001, configOptionsForTester.settingListItemTitle(), configOptionsForTester.getTitle()));
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : ABTestFactory.f42224a.x0()) {
                if (((ABTestConfig) obj).getOptionsForTester() != null) {
                    arrayList2.add(obj);
                }
            }
            for (ABTestConfig aBTestConfig : CollectionsKt.U0(arrayList2, new C0753b())) {
                arrayList.add(new AppSettings(20000, aBTestConfig.settingListItemTitle(), aBTestConfig.getAbTestKey()));
            }
            arrayList.add(new AppSettings(20003, "上报所有点位(当前客户端未上报点位" + EventRepository.f41474b.H() + ')', null, 4, null));
        }
        arrayList.add(new AppSettings(-1, null, null, 6, null));
        return arrayList;
    }
}
