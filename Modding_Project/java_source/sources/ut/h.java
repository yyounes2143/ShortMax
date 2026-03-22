package ut;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: SerialDescriptor.kt */
@Metadata
/* loaded from: classes8.dex */
public final class h {

    /* compiled from: SerialDescriptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<SerialDescriptor>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private int f68620a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SerialDescriptor f68621b;

        a(SerialDescriptor serialDescriptor) {
            this.f68621b = serialDescriptor;
            this.f68620a = serialDescriptor.e();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public SerialDescriptor next() {
            SerialDescriptor serialDescriptor = this.f68621b;
            int e10 = serialDescriptor.e();
            int i10 = this.f68620a;
            this.f68620a = i10 - 1;
            return serialDescriptor.d(e10 - i10);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f68620a > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* compiled from: SerialDescriptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b implements Iterator<String>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private int f68622a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SerialDescriptor f68623b;

        b(SerialDescriptor serialDescriptor) {
            this.f68623b = serialDescriptor;
            this.f68622a = serialDescriptor.e();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public String next() {
            SerialDescriptor serialDescriptor = this.f68623b;
            int e10 = serialDescriptor.e();
            int i10 = this.f68622a;
            this.f68622a = i10 - 1;
            return serialDescriptor.f(e10 - i10);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f68622a > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* compiled from: Iterables.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 SerialDescriptor.kt\nkotlinx/serialization/descriptors/SerialDescriptorKt\n*L\n1#1,17:1\n293#2,8:18\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class c implements Iterable<SerialDescriptor>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SerialDescriptor f68624a;

        public c(SerialDescriptor serialDescriptor) {
            this.f68624a = serialDescriptor;
        }

        @Override // java.lang.Iterable
        public Iterator<SerialDescriptor> iterator() {
            return new a(this.f68624a);
        }
    }

    /* compiled from: Iterables.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 SerialDescriptor.kt\nkotlinx/serialization/descriptors/SerialDescriptorKt\n*L\n1#1,17:1\n309#2,8:18\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class d implements Iterable<String>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SerialDescriptor f68625a;

        public d(SerialDescriptor serialDescriptor) {
            this.f68625a = serialDescriptor;
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return new b(this.f68625a);
        }
    }

    @NotNull
    public static final Iterable<SerialDescriptor> a(@NotNull SerialDescriptor serialDescriptor) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        return new c(serialDescriptor);
    }

    @NotNull
    public static final Iterable<String> b(@NotNull SerialDescriptor serialDescriptor) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        return new d(serialDescriptor);
    }
}
