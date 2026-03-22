package kotlin.enums;

import java.io.Serializable;
import java.lang.Enum;
import kotlin.Metadata;
import kotlin.collections.d;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EnumEntries.kt */
@Metadata
/* loaded from: classes8.dex */
public final class EnumEntriesList<T extends Enum<T>> extends d<T> implements ss.a<T>, Serializable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final T[] f61057a;

    public EnumEntriesList(@NotNull T[] entries) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.f61057a = entries;
    }

    private final Object writeReplace() {
        return new EnumEntriesSerializationProxy(this.f61057a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.b, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof Enum)) {
            return false;
        }
        return e((Enum) obj);
    }

    public boolean e(@NotNull T element) {
        Intrinsics.checkNotNullParameter(element, "element");
        if (((Enum) n.t0(this.f61057a, element.ordinal())) == element) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.d, java.util.List
    @NotNull
    /* renamed from: f */
    public T get(int i10) {
        d.Companion.b(i10, this.f61057a.length);
        return this.f61057a[i10];
    }

    @Override // kotlin.collections.d, kotlin.collections.b
    public int getSize() {
        return this.f61057a.length;
    }

    public int h(@NotNull T element) {
        Intrinsics.checkNotNullParameter(element, "element");
        int ordinal = element.ordinal();
        if (((Enum) n.t0(this.f61057a, ordinal)) != element) {
            return -1;
        }
        return ordinal;
    }

    public int i(@NotNull T element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return indexOf(element);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.d, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        return h((Enum) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.d, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        return i((Enum) obj);
    }
}
