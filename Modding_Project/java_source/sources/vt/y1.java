package vt;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Caching.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCaching.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ParametrizedCacheEntry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1557#2:220\n1628#2,3:221\n72#3,2:224\n1#4:226\n1#4:227\n*S KotlinDebug\n*F\n+ 1 Caching.kt\nkotlinx/serialization/internal/ParametrizedCacheEntry\n*L\n212#1:220\n212#1:221,3\n213#1:224,2\n213#1:227\n*E\n"})
/* loaded from: classes8.dex */
final class y1<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<List<x0>, Result<KSerializer<T>>> f69550a = new ConcurrentHashMap<>();
}
