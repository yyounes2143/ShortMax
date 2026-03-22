package com.facebook.appevents;

import androidx.annotation.RestrictTo;
import com.facebook.appevents.f0;
import com.facebook.appevents.gps.ara.GpsAraTriggersManager;
import com.facebook.appevents.gps.topics.GpsTopicsManager;
import com.facebook.appevents.integrity.ProtectedModeManager;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppSettingsManager;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppEventsManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class f0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f0 f14998a = new f0();

    private f0() {
    }

    public static final void a() {
        if (o4.a.d(f0.class)) {
            return;
        }
        try {
            FetchedAppSettingsManager.d(new a());
        } catch (Throwable th2) {
            o4.a.b(th2, f0.class);
        }
    }

    /* compiled from: AppEventsManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements FetchedAppSettingsManager.a {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void A(boolean z10) {
            if (z10) {
                ModelManager.f();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void B(boolean z10) {
            if (z10) {
                u1.a.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void C(boolean z10) {
            if (z10) {
                z1.a.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void D(boolean z10) {
            if (z10) {
                com.facebook.appevents.iap.g.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void E(boolean z10) {
            if (z10) {
                z1.g.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void F(boolean z10) {
            if (z10) {
                ProtectedModeManager.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void G(boolean z10) {
            if (z10) {
                z1.d.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void H(boolean z10) {
            if (z10) {
                z1.b.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void s(boolean z10) {
            if (z10) {
                q1.b.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void t(boolean z10) {
            if (z10) {
                d2.a.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void u(boolean z10) {
            if (z10) {
                z1.e.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void v(boolean z10) {
            if (z10) {
                z1.f.a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void w(boolean z10) {
            if (z10) {
                r1.b.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void x(boolean z10) {
            if (z10) {
                GpsAraTriggersManager.e();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void y(boolean z10) {
            if (z10) {
                x1.e.c();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void z(boolean z10) {
            if (z10) {
                GpsTopicsManager.a();
            }
        }

        @Override // com.facebook.internal.FetchedAppSettingsManager.a
        public void b(@Nullable com.facebook.internal.p pVar) {
            FeatureManager.a(FeatureManager.Feature.AAM, new FeatureManager.a() { // from class: com.facebook.appevents.p
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.s(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.RestrictiveDataFiltering, new FeatureManager.a() { // from class: com.facebook.appevents.c0
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.t(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.PrivacyProtection, new FeatureManager.a() { // from class: com.facebook.appevents.d0
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.A(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.EventDeactivation, new FeatureManager.a() { // from class: com.facebook.appevents.e0
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.B(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.BannedParamFiltering, new FeatureManager.a() { // from class: com.facebook.appevents.q
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.C(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.IapLogging, new FeatureManager.a() { // from class: com.facebook.appevents.r
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.D(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.StdParamEnforcement, new FeatureManager.a() { // from class: com.facebook.appevents.s
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.E(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.ProtectedMode, new FeatureManager.a() { // from class: com.facebook.appevents.t
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.F(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.MACARuleMatching, new FeatureManager.a() { // from class: com.facebook.appevents.u
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.G(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.BlocklistEvents, new FeatureManager.a() { // from class: com.facebook.appevents.v
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.H(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.FilterRedactedEvents, new FeatureManager.a() { // from class: com.facebook.appevents.w
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.u(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.FilterSensitiveParams, new FeatureManager.a() { // from class: com.facebook.appevents.x
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.v(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.CloudBridge, new FeatureManager.a() { // from class: com.facebook.appevents.y
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.w(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.GPSARATriggers, new FeatureManager.a() { // from class: com.facebook.appevents.z
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.x(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.GPSPACAProcessing, new FeatureManager.a() { // from class: com.facebook.appevents.a0
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.y(z10);
                }
            });
            FeatureManager.a(FeatureManager.Feature.GPSTopicsObservation, new FeatureManager.a() { // from class: com.facebook.appevents.b0
                @Override // com.facebook.internal.FeatureManager.a
                public final void a(boolean z10) {
                    f0.a.z(z10);
                }
            });
        }

        @Override // com.facebook.internal.FetchedAppSettingsManager.a
        public void a() {
        }
    }
}
