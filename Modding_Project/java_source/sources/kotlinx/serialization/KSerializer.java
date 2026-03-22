package kotlinx.serialization;

import kotlin.Metadata;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import st.c;
import st.l;
/* compiled from: KSerializer.kt */
@Metadata
/* loaded from: classes8.dex */
public interface KSerializer<T> extends l<T>, c<T> {
    @Override // st.l, st.c
    @NotNull
    SerialDescriptor getDescriptor();
}
