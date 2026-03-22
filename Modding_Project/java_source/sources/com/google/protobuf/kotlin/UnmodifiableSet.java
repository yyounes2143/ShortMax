package com.google.protobuf.kotlin;

import java.util.Collection;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: UnmodifiableCollections.kt */
@Metadata
/* loaded from: classes5.dex */
public final class UnmodifiableSet<E> extends UnmodifiableCollection<E> implements Set<E>, KMappedMarker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnmodifiableSet(@NotNull Collection<? extends E> delegate) {
        super(delegate);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
    }
}
