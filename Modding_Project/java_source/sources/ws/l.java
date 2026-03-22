package ws;

import java.io.BufferedReader;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReadWrite.kt */
@Metadata
/* loaded from: classes8.dex */
public final class l implements Sequence<String> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final BufferedReader f70267a;

    /* compiled from: ReadWrite.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<String>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private String f70268a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f70269b;

        a() {
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public String next() {
            if (hasNext()) {
                String str = this.f70268a;
                this.f70268a = null;
                Intrinsics.checkNotNull(str);
                return str;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f70268a == null && !this.f70269b) {
                String readLine = l.this.f70267a.readLine();
                this.f70268a = readLine;
                if (readLine == null) {
                    this.f70269b = true;
                }
            }
            if (this.f70268a != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public l(@NotNull BufferedReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.f70267a = reader;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<String> iterator() {
        return new a();
    }
}
