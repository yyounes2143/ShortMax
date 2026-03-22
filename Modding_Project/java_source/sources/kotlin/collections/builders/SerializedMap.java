package kotlin.collections.builders;

import java.io.Externalizable;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MapBuilder.kt */
@Metadata
/* loaded from: classes8.dex */
final class SerializedMap implements Externalizable {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f60983b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private Map<?, ?> f60984a;

    /* compiled from: MapBuilder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public SerializedMap(@NotNull Map<?, ?> map) {
        Intrinsics.checkNotNullParameter(map, "map");
        this.f60984a = map;
    }

    private final Object readResolve() {
        return this.f60984a;
    }

    @Override // java.io.Externalizable
    public void readExternal(@NotNull ObjectInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        byte readByte = input.readByte();
        if (readByte == 0) {
            int readInt = input.readInt();
            if (readInt >= 0) {
                Map d10 = p0.d(readInt);
                for (int i10 = 0; i10 < readInt; i10++) {
                    d10.put(input.readObject(), input.readObject());
                }
                this.f60984a = p0.b(d10);
                return;
            }
            throw new InvalidObjectException("Illegal size value: " + readInt + '.');
        }
        throw new InvalidObjectException("Unsupported flags value: " + ((int) readByte));
    }

    @Override // java.io.Externalizable
    public void writeExternal(@NotNull ObjectOutput output) {
        Intrinsics.checkNotNullParameter(output, "output");
        output.writeByte(0);
        output.writeInt(this.f60984a.size());
        for (Map.Entry<?, ?> entry : this.f60984a.entrySet()) {
            output.writeObject(entry.getKey());
            output.writeObject(entry.getValue());
        }
    }

    public SerializedMap() {
        this(p0.i());
    }
}
