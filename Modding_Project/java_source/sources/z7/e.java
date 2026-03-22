package z7;

import d8.p;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CrashlyticsRemoteConfigListener.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCrashlyticsRemoteConfigListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrashlyticsRemoteConfigListener.kt\ncom/google/firebase/crashlytics/internal/CrashlyticsRemoteConfigListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1557#2:41\n1628#2,3:42\n*S KotlinDebug\n*F\n+ 1 CrashlyticsRemoteConfigListener.kt\ncom/google/firebase/crashlytics/internal/CrashlyticsRemoteConfigListener\n*L\n27#1:41\n27#1:42,3\n*E\n"})
/* loaded from: classes5.dex */
public final class e implements i9.f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final p f71511a;

    public e(@NotNull p userMetadata) {
        Intrinsics.checkNotNullParameter(userMetadata, "userMetadata");
        this.f71511a = userMetadata;
    }

    @Override // i9.f
    public void a(@NotNull i9.e rolloutsState) {
        Intrinsics.checkNotNullParameter(rolloutsState, "rolloutsState");
        p pVar = this.f71511a;
        Set<i9.d> b10 = rolloutsState.b();
        Intrinsics.checkNotNullExpressionValue(b10, "getRolloutAssignments(...)");
        Set<i9.d> set = b10;
        ArrayList arrayList = new ArrayList(CollectionsKt.z(set, 10));
        for (i9.d dVar : set) {
            arrayList.add(d8.j.b(dVar.d(), dVar.b(), dVar.c(), dVar.f(), dVar.e()));
        }
        pVar.t(arrayList);
        g.f().b("Updated Crashlytics Rollout State");
    }
}
