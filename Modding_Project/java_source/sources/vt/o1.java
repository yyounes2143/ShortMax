package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: Tagged.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class o1 extends a3<String> {
    @NotNull
    protected abstract String v(@NotNull String str, @NotNull String str2);

    @NotNull
    protected abstract String w(@NotNull SerialDescriptor serialDescriptor, int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    @NotNull
    /* renamed from: x */
    public final String s(@NotNull SerialDescriptor serialDescriptor, int i10) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        return y(w(serialDescriptor, i10));
    }

    @NotNull
    protected final String y(@NotNull String nestedName) {
        Intrinsics.checkNotNullParameter(nestedName, "nestedName");
        String r10 = r();
        if (r10 == null) {
            r10 = "";
        }
        return v(r10, nestedName);
    }
}
