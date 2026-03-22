package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.protobuf.sdk.App;
/* loaded from: classes7.dex */
public class RequestDataRetriever {
    @NonNull
    public static Context collectContext(@NonNull android.content.Context context, @NonNull j2 j2Var, @NonNull v5 v5Var, @NonNull TargetingParams targetingParams, @Nullable ConnectionType connectionType, @Nullable AdsType adsType) {
        Context.Builder newBuilder = Context.newBuilder();
        Context.App.Builder newBuilder2 = Context.App.newBuilder();
        Publisher n10 = j2Var.n();
        if (n10 != null) {
            n10.build(newBuilder2);
        }
        j2Var.h().a(context, newBuilder2);
        targetingParams.build(newBuilder2);
        App.Builder newBuilder3 = App.newBuilder();
        targetingParams.fillAppExtension(newBuilder3);
        newBuilder3.setInstallTime(fr.e.o(i4.c()));
        newBuilder3.setFirstLaunchTime(fr.e.o(j2Var.J(context)));
        newBuilder2.addExtProto(Any.pack(newBuilder3.build()));
        newBuilder.setApp(newBuilder2);
        BlockedParams blockedParams = targetingParams.getBlockedParams();
        if (blockedParams != null) {
            Context.Restrictions.Builder newBuilder4 = Context.Restrictions.newBuilder();
            blockedParams.build(newBuilder4);
            newBuilder.setRestrictions(newBuilder4);
        }
        Context.User.Builder newBuilder5 = Context.User.newBuilder();
        v5Var.e(newBuilder5);
        if (v5Var.g()) {
            targetingParams.build(newBuilder5);
        }
        j2Var.q().d(context, newBuilder5, adsType);
        newBuilder.setUser(newBuilder5);
        Context.Regs.Builder newBuilder6 = Context.Regs.newBuilder();
        v5Var.d(newBuilder6);
        newBuilder.setRegs(newBuilder6);
        j2Var.i().a(context, newBuilder, targetingParams, j2Var.s(), v5Var, connectionType);
        return newBuilder.build();
    }
}
