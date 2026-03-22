package kotlin.collections.builders;

import java.io.Externalizable;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListBuilder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/SerializedCollection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"})
/* loaded from: classes8.dex */
public final class SerializedCollection implements Externalizable {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f60980c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private Collection<?> f60981a;

    /* renamed from: b  reason: collision with root package name */
    private final int f60982b;

    /* compiled from: ListBuilder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public SerializedCollection(@NotNull Collection<?> collection, int i10) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        this.f60981a = collection;
        this.f60982b = i10;
    }

    private final Object readResolve() {
        return this.f60981a;
    }

    @Override // java.io.Externalizable
    public void readExternal(@NotNull ObjectInput input) {
        List a10;
        Intrinsics.checkNotNullParameter(input, "input");
        byte readByte = input.readByte();
        int i10 = readByte & 1;
        if ((readByte & (-2)) == 0) {
            int readInt = input.readInt();
            if (readInt >= 0) {
                int i11 = 0;
                if (i10 != 0) {
                    if (i10 == 1) {
                        Set c10 = y0.c(readInt);
                        while (i11 < readInt) {
                            c10.add(input.readObject());
                            i11++;
                        }
                        a10 = y0.a(c10);
                    } else {
                        throw new InvalidObjectException("Unsupported collection type tag: " + i10 + '.');
                    }
                } else {
                    List d10 = CollectionsKt.d(readInt);
                    while (i11 < readInt) {
                        d10.add(input.readObject());
                        i11++;
                    }
                    a10 = CollectionsKt.a(d10);
                }
                this.f60981a = a10;
                return;
            }
            throw new InvalidObjectException("Illegal size value: " + readInt + '.');
        }
        throw new InvalidObjectException("Unsupported flags value: " + ((int) readByte) + '.');
    }

    @Override // java.io.Externalizable
    public void writeExternal(@NotNull ObjectOutput output) {
        Intrinsics.checkNotNullParameter(output, "output");
        output.writeByte(this.f60982b);
        output.writeInt(this.f60981a.size());
        Iterator<?> it = this.f60981a.iterator();
        while (it.hasNext()) {
            output.writeObject(it.next());
        }
    }

    public SerializedCollection() {
        this(CollectionsKt.n(), 0);
    }
}
