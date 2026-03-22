package gg;

import android.app.Activity;
import android.content.Context;
import com.shorttv.aar.billing.core.BillingClient;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BillingClient.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a implements q {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final BillingClient f52344a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f52345b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Object f52346c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ActResource f52347d;

    public a(@NotNull BillingClient billingClient) {
        Intrinsics.checkNotNullParameter(billingClient, "billingClient");
        this.f52344a = billingClient;
    }

    @Override // gg.q
    public boolean a() {
        return this.f52344a.S();
    }

    @Override // gg.q
    public void b(@Nullable String str) {
        this.f52345b = str;
    }

    @Override // gg.q
    @Nullable
    public Object c(@NotNull String str, @NotNull String str2, @NotNull rs.c<Object> cVar) {
        return this.f52344a.I(str, str2, cVar);
    }

    @Override // gg.q
    public void d(@Nullable Object obj) {
        this.f52346c = obj;
    }

    @Override // gg.q
    @Nullable
    public Object e(@NotNull String str, @NotNull rs.c<? super List<zc.f>> cVar) {
        return this.f52344a.F(str, cVar);
    }

    @Override // gg.q
    public void g() {
        this.f52344a.G();
    }

    @Override // gg.q
    public void h(@NotNull Context context, @NotNull String opId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(opId, "opId");
        this.f52344a.l0(context, opId);
    }

    @Override // gg.q
    public void i(@Nullable ActResource actResource) {
        this.f52347d = actResource;
    }

    @Override // gg.q
    public boolean isConnected() {
        return this.f52344a.R();
    }

    @Override // gg.q
    public boolean j() {
        return this.f52344a.O();
    }

    @Override // gg.q
    public void k(@NotNull Context context, @NotNull String opId, @Nullable zc.j jVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(opId, "opId");
        this.f52344a.k0(context, opId, jVar);
    }

    @Override // gg.q
    public void l(@NotNull String opId, @NotNull List<zc.g> products, boolean z10) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(products, "products");
        this.f52344a.X(opId, products, z10);
    }

    @Override // gg.q
    public void n(@NotNull String opId, @NotNull Activity activity, @NotNull String obfuscatedAccountId, @NotNull String obfuscatedProfileId, @NotNull String offerToken, @NotNull Object productDetails, int i10, @Nullable zc.k kVar, @Nullable String str, @Nullable SubsSku subsSku) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(obfuscatedAccountId, "obfuscatedAccountId");
        Intrinsics.checkNotNullParameter(obfuscatedProfileId, "obfuscatedProfileId");
        Intrinsics.checkNotNullParameter(offerToken, "offerToken");
        Intrinsics.checkNotNullParameter(productDetails, "productDetails");
        this.f52344a.U(opId, activity, obfuscatedAccountId, obfuscatedProfileId, offerToken, productDetails, kVar);
    }

    @Override // gg.q
    public boolean o() {
        return this.f52344a.P();
    }

    public /* synthetic */ a(BillingClient billingClient, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new BillingClient() : billingClient);
    }

    @Override // gg.q
    public void f(@Nullable List<CoinSku> list) {
    }

    @Override // gg.q
    public void m(@Nullable List<SubsSku> list) {
    }
}
