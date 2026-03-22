package kotlinx.coroutines.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LockFreeLinkedList.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final LockFreeLinkedListNode f61823a;

    public b(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        this.f61823a = lockFreeLinkedListNode;
    }

    @NotNull
    public String toString() {
        return "Removed[" + this.f61823a + ']';
    }
}
