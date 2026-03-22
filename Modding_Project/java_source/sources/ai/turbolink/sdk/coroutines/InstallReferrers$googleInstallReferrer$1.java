package ai.turbolink.sdk.coroutines;

import ai.turbolink.sdk.utils.TurboLinkLogger;
import at.p;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InstallReferrers.kt */
@Metadata
@d(c = "ai.turbolink.sdk.coroutines.InstallReferrers$googleInstallReferrer$1", f = "InstallReferrers.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class InstallReferrers$googleInstallReferrer$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ p<Boolean, String, Long, Long, Boolean, Unit> $onResult;
    final /* synthetic */ InstallReferrerClient $referrerClient;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public InstallReferrers$googleInstallReferrer$1(InstallReferrerClient installReferrerClient, p<? super Boolean, ? super String, ? super Long, ? super Long, ? super Boolean, Unit> pVar, c<? super InstallReferrers$googleInstallReferrer$1> cVar) {
        super(2, cVar);
        this.$referrerClient = installReferrerClient;
        this.$onResult = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new InstallReferrers$googleInstallReferrer$1(this.$referrerClient, this.$onResult, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((InstallReferrers$googleInstallReferrer$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            final InstallReferrerClient installReferrerClient = this.$referrerClient;
            final p<Boolean, String, Long, Long, Boolean, Unit> pVar = this.$onResult;
            installReferrerClient.startConnection(new InstallReferrerStateListener() { // from class: ai.turbolink.sdk.coroutines.InstallReferrers$googleInstallReferrer$1.1
                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerServiceDisconnected() {
                    p<Boolean, String, Long, Long, Boolean, Unit> pVar2 = pVar;
                    Boolean bool = Boolean.FALSE;
                    pVar2.invoke(bool, null, 0L, 0L, bool);
                    InstallReferrerClient.this.endConnection();
                }

                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerSetupFinished(int i10) {
                    try {
                        try {
                            if (i10 == 0) {
                                ReferrerDetails installReferrer = InstallReferrerClient.this.getInstallReferrer();
                                pVar.invoke(Boolean.TRUE, installReferrer.getInstallReferrer(), Long.valueOf(installReferrer.getReferrerClickTimestampSeconds()), Long.valueOf(installReferrer.getInstallBeginTimestampSeconds()), Boolean.valueOf(installReferrer.getGooglePlayInstantParam()));
                            } else {
                                p<Boolean, String, Long, Long, Boolean, Unit> pVar2 = pVar;
                                Boolean bool = Boolean.FALSE;
                                pVar2.invoke(bool, null, 0L, 0L, bool);
                            }
                        } catch (Exception e10) {
                            TurboLinkLogger.e("InstallReferrer google play server is unavailable, exception: " + e10);
                            p<Boolean, String, Long, Long, Boolean, Unit> pVar3 = pVar;
                            Boolean bool2 = Boolean.FALSE;
                            pVar3.invoke(bool2, null, 0L, 0L, bool2);
                        }
                        InstallReferrerClient.this.endConnection();
                    } catch (Throwable th2) {
                        InstallReferrerClient.this.endConnection();
                        throw th2;
                    }
                }
            });
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
