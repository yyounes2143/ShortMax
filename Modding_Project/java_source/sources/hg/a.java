package hg;

import com.startshorts.androidplayer.bean.event.RefreshPayScoreEvent;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.purchase.AvailableExpansionSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import dd.k;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PurchaseLocalDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPurchaseLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseLocalDS.kt\ncom/startshorts/androidplayer/repo/billing/purchase/PurchaseLocalDS\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"})
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0767a f52870a = new C0767a(null);

    /* compiled from: PurchaseLocalDS.kt */
    @Metadata
    /* renamed from: hg.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0767a {
        public /* synthetic */ C0767a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0767a() {
        }
    }

    public final void a() {
        Logger.f41511a.e("PurchaseLocalDS", "clearExpansionSku");
        ud.b.f68412a.a3(AccountRepo.f43052a.t0(), null);
    }

    public final void b(@Nullable String str) {
        k.f50341a.d("immersion_normalcoinskuresult" + str, null);
    }

    @Nullable
    public final CoinSku c() {
        try {
            AvailableExpansionSku Q = ud.b.f68412a.Q(AccountRepo.f43052a.t0());
            if (Q == null) {
                return null;
            }
            if (Q.available()) {
                Q.refreshRetentionSeconds();
                return Q.getSku();
            }
            a();
            return null;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("PurchaseLocalDS", "getExpansionSku failed -> " + e10.getMessage());
            return null;
        }
    }

    @Nullable
    public final CoinSku d() {
        try {
            AvailableExpansionSku Q = ud.b.f68412a.Q(AccountRepo.f43052a.t0());
            if (Q != null) {
                Q.refreshRetentionSeconds();
            }
            if (Q == null) {
                return null;
            }
            return Q.getSku();
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("PurchaseLocalDS", "getExpansionSku failed -> " + e10.getMessage());
            return null;
        }
    }

    @NotNull
    public final Object e(@Nullable String str) {
        QueryNormalCoinSkuResult g12 = ud.b.f68412a.g1(str);
        if (g12 != null) {
            return Result.d(g12);
        }
        Result.a aVar = Result.f60901b;
        return Result.d(f.a(ResponseException.Companion.getUNKNOWN_EXCEPTION()));
    }

    public final void f(boolean z10) {
        ud.a aVar = ud.a.f68411a;
        if (aVar.i() != z10) {
            aVar.i0(z10);
            au.c.d().l(new RefreshPayScoreEvent());
        }
    }

    public final void g(@Nullable String str, @Nullable QueryNormalCoinSkuResult queryNormalCoinSkuResult) {
        ud.b.f68412a.t4(str, queryNormalCoinSkuResult);
    }
}
