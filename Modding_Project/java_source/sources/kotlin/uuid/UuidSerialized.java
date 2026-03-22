package kotlin.uuid;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UuidJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public final class UuidSerialized implements Externalizable {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f61264c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private long f61265a;

    /* renamed from: b  reason: collision with root package name */
    private long f61266b;

    /* compiled from: UuidJVM.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public UuidSerialized(long j10, long j11) {
        this.f61265a = j10;
        this.f61266b = j11;
    }

    private final Object readResolve() {
        return Uuid.f61259c.a(this.f61265a, this.f61266b);
    }

    @Override // java.io.Externalizable
    public void readExternal(@NotNull ObjectInput input) {
        Intrinsics.checkNotNullParameter(input, "input");
        this.f61265a = input.readLong();
        this.f61266b = input.readLong();
    }

    @Override // java.io.Externalizable
    public void writeExternal(@NotNull ObjectOutput output) {
        Intrinsics.checkNotNullParameter(output, "output");
        output.writeLong(this.f61265a);
        output.writeLong(this.f61266b);
    }

    public UuidSerialized() {
        this(0L, 0L);
    }
}
