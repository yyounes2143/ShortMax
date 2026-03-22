package io.bidmachine;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.adcom.Context;
import io.bidmachine.analytics.BidMachineAnalytics;
import io.bidmachine.protobuf.RequestTokenPayload;
import io.bidmachine.protobuf.sdk.ContextualData;
import io.bidmachine.protobuf.sdk.Session;
import java.util.Date;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SessionParams.java */
/* loaded from: classes7.dex */
public final class o5 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SessionParams.java */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f58028a;

        static {
            int[] iArr = new int[AdsType.values().length];
            f58028a = iArr;
            try {
                iArr[AdsType.Banner.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f58028a[AdsType.Interstitial.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f58028a[AdsType.Rewarded.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f58028a[AdsType.Native.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Nullable
    private ContextualData.Builder f(@Nullable AdsType adsType, @NonNull String str, @NonNull Map<String, Object> map) {
        try {
            final ContextualData.Builder mediatorName = ContextualData.newBuilder().setMediatorName(str);
            io.bidmachine.core.g.H(adsType, new Executable() { // from class: io.bidmachine.g5
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    o5.k(ContextualData.Builder.this, (AdsType) obj);
                }
            });
            ContextualData.ImpressionData.Builder g10 = g(map);
            Objects.requireNonNull(mediatorName);
            io.bidmachine.core.g.H(g10, new Executable() { // from class: io.bidmachine.h5
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ContextualData.Builder.this.setData((ContextualData.ImpressionData.Builder) obj);
                }
            });
            return mediatorName;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    private ContextualData.ImpressionData.Builder g(@NonNull Map<String, Object> map) {
        try {
            final ContextualData.ImpressionData.Builder newBuilder = ContextualData.ImpressionData.newBuilder();
            Integer l10 = io.bidmachine.core.g.l(map.get("imimd"), null);
            Objects.requireNonNull(newBuilder);
            io.bidmachine.core.g.H(l10, new Executable() { // from class: io.bidmachine.i5
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ContextualData.ImpressionData.Builder.this.setImimd(((Integer) obj).intValue());
                }
            });
            io.bidmachine.core.g.H(io.bidmachine.core.g.l(map.get("imd"), null), new Executable() { // from class: io.bidmachine.j5
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ContextualData.ImpressionData.Builder.this.setImd(((Integer) obj).intValue());
                }
            });
            io.bidmachine.core.g.H(io.bidmachine.core.g.k(map.get("imwp"), null), new Executable() { // from class: io.bidmachine.k5
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ContextualData.ImpressionData.Builder.this.setImwp(((Float) obj).floatValue());
                }
            });
            io.bidmachine.core.g.H(io.bidmachine.core.g.k(map.get("wp"), null), new Executable() { // from class: io.bidmachine.l5
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    ContextualData.ImpressionData.Builder.this.setWp(((Float) obj).floatValue());
                }
            });
            io.bidmachine.core.g.H(map.get("imagency"), new Executable() { // from class: io.bidmachine.m5
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    o5.l(ContextualData.ImpressionData.Builder.this, obj);
                }
            });
            io.bidmachine.core.g.H(map.get("agency"), new Executable() { // from class: io.bidmachine.n5
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    o5.m(ContextualData.ImpressionData.Builder.this, obj);
                }
            });
            return newBuilder;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    private Session.Builder h(@NonNull Context context, @Nullable AdsType adsType) {
        try {
            final Session.Builder sessionId = Session.newBuilder().setSessionId(SessionManager.get().getSessionId());
            Session.Context.Builder i10 = i(context, adsType);
            Objects.requireNonNull(sessionId);
            io.bidmachine.core.g.H(i10, new Executable() { // from class: io.bidmachine.e5
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    Session.Builder.this.setContext((Session.Context.Builder) obj);
                }
            });
            return sessionId;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    private Session.Context.Builder i(@NonNull Context context, @Nullable AdsType adsType) {
        try {
            Date date = new Date(m2.q(context));
            SessionManager sessionManager = SessionManager.get();
            final Session.Context.Builder retention = Session.Context.newBuilder().setSessionduration(sessionManager.getSessionDurationSec()).setLastSessionDuration(sessionManager.getLastSessionDurationSec()).setSc(SessionManager.get().getSessionCount()).setRetention(kr.a.c(date, new Date(io.bidmachine.core.b.a())));
            for (Map.Entry<String, Map<String, Object>> entry : BidMachineAnalytics.getImpData(j(adsType)).entrySet()) {
                ContextualData.Builder f10 = f(adsType, entry.getKey(), entry.getValue());
                Objects.requireNonNull(retention);
                io.bidmachine.core.g.H(f10, new Executable() { // from class: io.bidmachine.f5
                    @Override // io.bidmachine.Executable
                    public final void execute(Object obj) {
                        Session.Context.Builder.this.addData((ContextualData.Builder) obj);
                    }
                });
            }
            return retention;
        } catch (Throwable unused) {
            return null;
        }
    }

    private int j(@Nullable AdsType adsType) {
        if (adsType == null) {
            return 0;
        }
        int i10 = a.f58028a[adsType.ordinal()];
        int i11 = 1;
        if (i10 != 1) {
            i11 = 2;
            if (i10 != 2) {
                i11 = 3;
                if (i10 != 3) {
                    i11 = 4;
                    if (i10 != 4) {
                        return 0;
                    }
                }
            }
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k(ContextualData.Builder builder, AdsType adsType) {
        builder.setPlacement(adsType.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l(ContextualData.ImpressionData.Builder builder, Object obj) {
        builder.setImagency(obj.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void m(ContextualData.ImpressionData.Builder builder, Object obj) {
        builder.setAgency(obj.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@NonNull Context context, @NonNull Context.User.Builder builder, @Nullable AdsType adsType) {
        Session.Builder h10 = h(context, adsType);
        if (h10 != null) {
            builder.addExtProto(Any.pack(h10.build()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@NonNull android.content.Context context, @NonNull RequestTokenPayload.Builder builder, @Nullable AdsFormat adsFormat) {
        AdsType adsType;
        if (adsFormat != null) {
            adsType = adsFormat.getAdsType();
        } else {
            adsType = null;
        }
        Session.Builder h10 = h(context, adsType);
        if (h10 != null) {
            builder.setSession(h10);
        }
    }
}
