package io.ktor.util.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LockFreeLinkedList.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final Object f59304a = new g("CONDITION_FALSE");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Object f59305b = new g("ALREADY_REMOVED");
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Object f59306c = new g("LIST_EMPTY");
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Object f59307d = new g("REMOVE_PREPARED");
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Object f59308e = new g("NO_DECISION");

    @NotNull
    public static final d a(@NotNull Object obj) {
        f fVar;
        d dVar;
        Intrinsics.checkNotNullParameter(obj, "<this>");
        if (obj instanceof f) {
            fVar = (f) obj;
        } else {
            fVar = null;
        }
        if (fVar == null || (dVar = fVar.f59312a) == null) {
            return (d) obj;
        }
        return dVar;
    }
}
