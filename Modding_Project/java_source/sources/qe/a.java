package qe;

import com.startshorts.androidplayer.bean.configure.FeatureController;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.AppConfigureUtil;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import java.util.Collection;
import java.util.List;
import jk.l;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: FeatureJsonConfigure.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFeatureJsonConfigure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureJsonConfigure.kt\ncom/startshorts/androidplayer/manager/configure/feature/FeatureJsonConfigure\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1755#2,3:73\n*S KotlinDebug\n*F\n+ 1 FeatureJsonConfigure.kt\ncom/startshorts/androidplayer/manager/configure/feature/FeatureJsonConfigure\n*L\n65#1:73,3\n*E\n"})
/* loaded from: classes6.dex */
public final class a implements me.b<FeatureController> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f65321a = new a();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static FeatureController f65322b = new FeatureController(false, false, false, false, 0, 0, 0, 0, false, false, false, null, 0, false, 0, null, null, null, 0, false, null, false, false, false, false, false, false, false, false, false, 0, false, false, 0, 0, false, false, false, false, false, false, false, false, null, -1, 4095, null);

    /* renamed from: c  reason: collision with root package name */
    private static boolean f65323c;

    private a() {
    }

    private final boolean g(String str) {
        if (StringsKt.t0(str)) {
            Logger.f41511a.e("FeatureJsonConfigure", "update failed -> json is blank");
            return false;
        }
        try {
            FeatureController featureController = (FeatureController) l.b(str, FeatureController.class);
            if (featureController != null) {
                f65322b = featureController;
                ud.b.f68412a.I4(featureController.getRemoteConfigAwaitFirebaseEnable());
            }
            return true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("FeatureJsonConfigure", "update exception -> " + e10.getMessage());
            return false;
        }
    }

    @Override // me.b
    @Nullable
    public Object a(@NotNull String str, @NotNull c<? super Boolean> cVar) {
        return kotlin.coroutines.jvm.internal.a.a(g(str));
    }

    @Override // me.b
    @Nullable
    public Object b(@NotNull c<? super Unit> cVar) {
        Object h10 = AppConfigureUtil.f42209a.h("feature_android", this, cVar);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Unit.f60915a;
    }

    @Override // me.b
    public void c(boolean z10) {
        f65323c = z10;
    }

    @Override // me.b
    public boolean e() {
        return f65323c;
    }

    public final boolean f(@NotNull Function1<? super FeatureController, String> pickCountryCodes) {
        Intrinsics.checkNotNullParameter(pickCountryCodes, "pickCountryCodes");
        try {
            List<String> r10 = v.r(pickCountryCodes.invoke(value()));
            String i02 = AccountRepo.f43052a.i0();
            List<String> list = r10;
            if ((list instanceof Collection) && list.isEmpty()) {
                return false;
            }
            for (String str : list) {
                if (StringsKt.G(str, i02, true)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("FeatureJsonConfigure", "isCountryCodeMatched exception -> " + e10.getMessage());
            return false;
        }
    }

    @Override // me.b
    @NotNull
    /* renamed from: h */
    public FeatureController value() {
        return f65322b;
    }
}
