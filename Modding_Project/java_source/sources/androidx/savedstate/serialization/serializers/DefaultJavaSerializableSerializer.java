package androidx.savedstate.serialization.serializers;

import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BuiltInSerializer.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DefaultJavaSerializableSerializer extends JavaSerializableSerializer<Serializable> {
    @NotNull
    public static final DefaultJavaSerializableSerializer INSTANCE = new DefaultJavaSerializableSerializer();

    private DefaultJavaSerializableSerializer() {
    }
}
