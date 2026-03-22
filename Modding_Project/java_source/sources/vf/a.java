package vf;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.search.AntiBrushingState;
import com.startshorts.androidplayer.bean.search.RedeemSearchInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.u;
import java.util.Iterator;
import java.util.Locale;
import jk.l;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import ud.b;
/* compiled from: SearchAntiBrushingManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final C0950a f68911b = new C0950a(null);

    /* renamed from: a  reason: collision with root package name */
    private AntiBrushingState f68912a;

    /* compiled from: SearchAntiBrushingManager.kt */
    @Metadata
    /* renamed from: vf.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0950a {
        public /* synthetic */ C0950a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0950a() {
        }
    }

    private final void a(String str) {
        AntiBrushingState antiBrushingState = this.f68912a;
        if (antiBrushingState == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAntiBrushingState");
            antiBrushingState = null;
        }
        antiBrushingState.getRedeemCodeSearchHistorys().add(new RedeemSearchInfo(str, DeviceUtil.f48146a.K()));
    }

    private final boolean c(String str) {
        AntiBrushingState antiBrushingState = this.f68912a;
        Object obj = null;
        if (antiBrushingState == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAntiBrushingState");
            antiBrushingState = null;
        }
        Iterator<T> it = antiBrushingState.getRedeemCodeSearchHistorys().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (Intrinsics.areEqual(((RedeemSearchInfo) next).getCode(), str)) {
                obj = next;
                break;
            }
        }
        if (obj != null) {
            return true;
        }
        return false;
    }

    private final void e() {
        b bVar = b.f68412a;
        AntiBrushingState antiBrushingState = this.f68912a;
        AntiBrushingState antiBrushingState2 = null;
        if (antiBrushingState == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAntiBrushingState");
            antiBrushingState = null;
        }
        bVar.G2(antiBrushingState);
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("saveAntiBrushingState：");
        AntiBrushingState antiBrushingState3 = this.f68912a;
        if (antiBrushingState3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAntiBrushingState");
        } else {
            antiBrushingState2 = antiBrushingState3;
        }
        sb2.append(l.d(antiBrushingState2));
        logger.h("SearchAntiBrushingManager", sb2.toString());
    }

    public final boolean b(@NotNull String keyword) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        String obj = StringsKt.v1(keyword).toString();
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String lowerCase = obj.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (!StringsKt.V(lowerCase, "tv", false, 2, null) || c(lowerCase)) {
            return true;
        }
        AntiBrushingState antiBrushingState = this.f68912a;
        if (antiBrushingState == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAntiBrushingState");
            antiBrushingState = null;
        }
        if (antiBrushingState.getRedeemCodeSearchHistorys().size() >= 5) {
            u.j(u.f51776a, R$string.search_activity_search_frequently_tips, 0, 2, null);
            return false;
        }
        a(lowerCase);
        e();
        return true;
    }

    public final void d() {
        long j10;
        AntiBrushingState w10 = b.f68412a.w();
        this.f68912a = w10;
        if (w10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mAntiBrushingState");
            w10 = null;
        }
        RedeemSearchInfo redeemSearchInfo = (RedeemSearchInfo) CollectionsKt.firstOrNull(w10.getRedeemCodeSearchHistorys());
        TimeUtil timeUtil = TimeUtil.f48175a;
        if (redeemSearchInfo != null) {
            j10 = redeemSearchInfo.getTime();
        } else {
            j10 = 0;
        }
        if (!timeUtil.o(j10, DeviceUtil.f48146a.K())) {
            this.f68912a = new AntiBrushingState(null, 1, null);
        }
    }
}
