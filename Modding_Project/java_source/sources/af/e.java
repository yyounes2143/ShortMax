package af;

import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.startshorts.androidplayer.bean.event.EventInfo;
import fk.u;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FirebaseEventLogger.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFirebaseEventLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseEventLogger.kt\ncom/startshorts/androidplayer/manager/event/FirebaseEventLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n1863#2,2:53\n*S KotlinDebug\n*F\n+ 1 FirebaseEventLogger.kt\ncom/startshorts/androidplayer/manager/event/FirebaseEventLogger\n*L\n32#1:53,2\n*E\n"})
/* loaded from: classes6.dex */
public final class e implements h {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private FirebaseAnalytics f636a;

    public synchronized void a() {
        if (this.f636a == null) {
            this.f636a = FirebaseAnalytics.getInstance(u.f51776a.b());
        }
    }

    @Override // af.h
    public int c() {
        return 1;
    }

    @Override // af.h
    @Nullable
    public Object d(@NotNull String str, @Nullable Bundle bundle, long j10, @NotNull rs.c<? super Unit> cVar) {
        a();
        FirebaseAnalytics firebaseAnalytics = this.f636a;
        if (firebaseAnalytics != null) {
            firebaseAnalytics.a(str, bundle);
        }
        return Unit.f60915a;
    }

    @Override // af.h
    @Nullable
    public Object f(@NotNull List<EventInfo> list, @NotNull rs.c<? super Unit> cVar) {
        a();
        for (EventInfo eventInfo : list) {
            String eventName = eventInfo.getEventName();
            Bundle extras = eventInfo.getExtras();
            FirebaseAnalytics firebaseAnalytics = this.f636a;
            if (firebaseAnalytics != null) {
                firebaseAnalytics.a(eventName, extras);
            }
        }
        return Unit.f60915a;
    }

    @Override // af.h
    public void b(boolean z10) {
    }

    @Override // af.h
    public void e(int i10, @Nullable Function1<? super Integer, Unit> function1, @Nullable Function0<Unit> function0) {
    }
}
