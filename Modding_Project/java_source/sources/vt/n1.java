package vt;

import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: Tagged.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class n1 extends z2<String> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.z2
    @NotNull
    /* renamed from: A */
    public final String t(@NotNull SerialDescriptor serialDescriptor, int i10) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        return B(z(serialDescriptor, i10));
    }

    @NotNull
    protected final String B(@NotNull String nestedName) {
        Intrinsics.checkNotNullParameter(nestedName, "nestedName");
        String s10 = s();
        if (s10 == null) {
            s10 = "";
        }
        return y(s10, nestedName);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final String C() {
        if (u().isEmpty()) {
            return "$";
        }
        return CollectionsKt.A0(u(), ".", "$.", null, 0, null, null, 60, null);
    }

    @NotNull
    protected abstract String y(@NotNull String str, @NotNull String str2);

    @NotNull
    protected String z(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return descriptor.f(i10);
    }
}
