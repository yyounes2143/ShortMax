package k4;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GateKeeperRuntimeCache.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGateKeeperRuntimeCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GateKeeperRuntimeCache.kt\ncom/facebook/internal/gatekeeper/GateKeeperRuntimeCache\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,109:1\n1855#2,2:110\n125#3:112\n152#3,3:113\n*S KotlinDebug\n*F\n+ 1 GateKeeperRuntimeCache.kt\ncom/facebook/internal/gatekeeper/GateKeeperRuntimeCache\n*L\n35#1:110,2\n47#1:112\n47#1:113,3\n*E\n"})
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<String, ConcurrentHashMap<String, a>> f60589a = new ConcurrentHashMap<>();

    @Nullable
    public final List<a> a(@NotNull String appId) {
        Intrinsics.checkNotNullParameter(appId, "appId");
        ConcurrentHashMap<String, a> concurrentHashMap = this.f60589a.get(appId);
        if (concurrentHashMap != null) {
            ArrayList arrayList = new ArrayList(concurrentHashMap.size());
            for (Map.Entry<String, a> entry : concurrentHashMap.entrySet()) {
                arrayList.add(entry.getValue());
            }
            return arrayList;
        }
        return null;
    }

    public final void b(@NotNull String appId, @NotNull List<a> gateKeeperList) {
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(gateKeeperList, "gateKeeperList");
        ConcurrentHashMap<String, a> concurrentHashMap = new ConcurrentHashMap<>();
        for (a aVar : gateKeeperList) {
            concurrentHashMap.put(aVar.a(), aVar);
        }
        this.f60589a.put(appId, concurrentHashMap);
    }
}
