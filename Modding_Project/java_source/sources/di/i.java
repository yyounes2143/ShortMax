package di;

import androidx.appcompat.app.AppCompatActivity;
import ca.k;
import com.startshorts.androidplayer.bean.ad.AdConfig;
import com.startshorts.androidplayer.bean.ad.AdNewConfig;
import com.startshorts.androidplayer.bean.ad.HotSplash;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.utils.DeviceUtil;
import de.r;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TestRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i f50401a = new i();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ms.i f50402b = kotlin.c.b(new Function0() { // from class: di.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List d10;
            d10 = i.d();
            return d10;
        }
    });

    private i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List d() {
        Boolean bool;
        AdConfig adConfig;
        HotSplash hotSplash;
        f fVar = new f("gitCode:nogit", null, null, 6, null);
        f fVar2 = new f("buildTime:20260312_151615", null, null, 6, null);
        f fVar3 = new f("deviceId:\n" + DeviceUtil.f48146a.n(), null, null, 6, null);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("adSdkV:1.9.1.0-max\nadLoader:");
        AdManager adManager = AdManager.f41600a;
        sb2.append(adManager.B());
        f fVar4 = new f(sb2.toString(), null, new Function1() { // from class: di.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit e10;
                e10 = i.e((AppCompatActivity) obj);
                return e10;
            }
        }, 2, null);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("adConfig:\n");
        ud.a aVar = ud.a.f68411a;
        sb3.append(aVar.a());
        f fVar5 = new f(sb3.toString(), null, null, 6, null);
        f fVar6 = new f("and_ad_close_test 实验插屏关闭:" + ABTestFactory.f42224a.D0().isTestGroup(), null, null, 6, null);
        f fVar7 = new f("订阅或者金币控制是否开启广告:" + com.startshorts.androidplayer.manager.configure.ad.d.f42346a.a(), null, null, 6, null);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("开屏广告:\n冷启动开屏判定:");
        sb4.append(adManager.A());
        sb4.append("\n热启动开屏判定:");
        sb4.append(adManager.H());
        sb4.append("\n今天最大显示数是否符合:");
        fk.b bVar = fk.b.f51705a;
        sb4.append(bVar.c());
        sb4.append("\n间隔要求是否符合:");
        sb4.append(bVar.b());
        sb4.append("\n\n上面的三个判定决定了是否开启开屏，下面是其他参考细节HotSplash开关:");
        AdNewConfig a10 = aVar.a();
        if (a10 != null && (adConfig = a10.getAdConfig()) != null && (hotSplash = adConfig.getHotSplash()) != null) {
            bool = Boolean.valueOf(hotSplash.isEnableShow());
        } else {
            bool = null;
        }
        sb4.append(bool);
        sb4.append("\nand_ad_load_close_test实验开关:");
        sb4.append(r.f50368a.d());
        sb4.append('\n');
        return CollectionsKt.t(fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7, new f(sb4.toString(), null, null, 6, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(AppCompatActivity it) {
        Intrinsics.checkNotNullParameter(it, "it");
        k.f3414a.q(it);
        return Unit.f60915a;
    }

    @NotNull
    public final List<f> c() {
        return (List) f50402b.getValue();
    }
}
