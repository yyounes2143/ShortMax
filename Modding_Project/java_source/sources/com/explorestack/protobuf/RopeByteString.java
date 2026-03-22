package com.explorestack.protobuf;

import androidx.collection.SieveCacheKt;
import com.explorestack.protobuf.ByteString;
import com.inmobi.commons.core.configs.AdConfig;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.model.VideoRef;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class RopeByteString extends ByteString {

    /* renamed from: f  reason: collision with root package name */
    static final int[] f14186f = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, VideoRef.VALUE_VIDEO_REF_FIRST_SUB_VID, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_QUERY, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};

    /* renamed from: a  reason: collision with root package name */
    private final int f14187a;

    /* renamed from: b  reason: collision with root package name */
    private final ByteString f14188b;

    /* renamed from: c  reason: collision with root package name */
    private final ByteString f14189c;

    /* renamed from: d  reason: collision with root package name */
    private final int f14190d;

    /* renamed from: e  reason: collision with root package name */
    private final int f14191e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ByteString.AbstractByteIterator {

        /* renamed from: a  reason: collision with root package name */
        final c f14192a;

        /* renamed from: b  reason: collision with root package name */
        ByteString.ByteIterator f14193b = a();

        a() {
            this.f14192a = new c(RopeByteString.this, null);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [com.explorestack.protobuf.ByteString$ByteIterator] */
        private ByteString.ByteIterator a() {
            if (this.f14192a.hasNext()) {
                return this.f14192a.next().iterator2();
            }
            return null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f14193b != null) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.ByteString.ByteIterator
        public byte nextByte() {
            ByteString.ByteIterator byteIterator = this.f14193b;
            if (byteIterator != null) {
                byte nextByte = byteIterator.nextByte();
                if (!this.f14193b.hasNext()) {
                    this.f14193b = a();
                }
                return nextByte;
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class c implements Iterator<ByteString.LeafByteString> {

        /* renamed from: a  reason: collision with root package name */
        private final ArrayDeque<RopeByteString> f14196a;

        /* renamed from: b  reason: collision with root package name */
        private ByteString.LeafByteString f14197b;

        /* synthetic */ c(ByteString byteString, a aVar) {
            this(byteString);
        }

        private ByteString.LeafByteString a(ByteString byteString) {
            while (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                this.f14196a.push(ropeByteString);
                byteString = ropeByteString.f14188b;
            }
            return (ByteString.LeafByteString) byteString;
        }

        private ByteString.LeafByteString b() {
            ByteString.LeafByteString a10;
            do {
                ArrayDeque<RopeByteString> arrayDeque = this.f14196a;
                if (arrayDeque != null && !arrayDeque.isEmpty()) {
                    a10 = a(this.f14196a.pop().f14189c);
                } else {
                    return null;
                }
            } while (a10.isEmpty());
            return a10;
        }

        @Override // java.util.Iterator
        /* renamed from: c */
        public ByteString.LeafByteString next() {
            ByteString.LeafByteString leafByteString = this.f14197b;
            if (leafByteString != null) {
                this.f14197b = b();
                return leafByteString;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f14197b != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private c(ByteString byteString) {
            if (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                ArrayDeque<RopeByteString> arrayDeque = new ArrayDeque<>(ropeByteString.getTreeDepth());
                this.f14196a = arrayDeque;
                arrayDeque.push(ropeByteString);
                this.f14197b = a(ropeByteString.f14188b);
                return;
            }
            this.f14196a = null;
            this.f14197b = (ByteString.LeafByteString) byteString;
        }
    }

    /* synthetic */ RopeByteString(ByteString byteString, ByteString byteString2, a aVar) {
        this(byteString, byteString2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteString f(ByteString byteString, ByteString byteString2) {
        if (byteString2.size() == 0) {
            return byteString;
        }
        if (byteString.size() == 0) {
            return byteString2;
        }
        int size = byteString.size() + byteString2.size();
        if (size < 128) {
            return g(byteString, byteString2);
        }
        if (byteString instanceof RopeByteString) {
            RopeByteString ropeByteString = (RopeByteString) byteString;
            if (ropeByteString.f14189c.size() + byteString2.size() < 128) {
                return new RopeByteString(ropeByteString.f14188b, g(ropeByteString.f14189c, byteString2));
            } else if (ropeByteString.f14188b.getTreeDepth() > ropeByteString.f14189c.getTreeDepth() && ropeByteString.getTreeDepth() > byteString2.getTreeDepth()) {
                return new RopeByteString(ropeByteString.f14188b, new RopeByteString(ropeByteString.f14189c, byteString2));
            }
        }
        if (size < i(Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1)) {
            return new b(null).b(byteString, byteString2);
        }
        return new RopeByteString(byteString, byteString2);
    }

    private static ByteString g(ByteString byteString, ByteString byteString2) {
        int size = byteString.size();
        int size2 = byteString2.size();
        byte[] bArr = new byte[size + size2];
        byteString.copyTo(bArr, 0, 0, size);
        byteString2.copyTo(bArr, 0, size, size2);
        return ByteString.wrap(bArr);
    }

    private boolean h(ByteString byteString) {
        boolean equalsRange;
        c cVar = new c(this, null);
        ByteString.LeafByteString next = cVar.next();
        c cVar2 = new c(byteString, null);
        ByteString.LeafByteString next2 = cVar2.next();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int size = next.size() - i10;
            int size2 = next2.size() - i11;
            int min = Math.min(size, size2);
            if (i10 == 0) {
                equalsRange = next.equalsRange(next2, i11, min);
            } else {
                equalsRange = next2.equalsRange(next, i10, min);
            }
            if (!equalsRange) {
                return false;
            }
            i12 += min;
            int i13 = this.f14187a;
            if (i12 >= i13) {
                if (i12 == i13) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == size) {
                i10 = 0;
                next = cVar.next();
            } else {
                i10 += min;
                next = next;
            }
            if (min == size2) {
                next2 = cVar2.next();
                i11 = 0;
            } else {
                i11 += min;
            }
        }
    }

    static int i(int i10) {
        int[] iArr = f14186f;
        if (i10 >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[i10];
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    @Override // com.explorestack.protobuf.ByteString
    public ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // com.explorestack.protobuf.ByteString
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        ArrayList arrayList = new ArrayList();
        c cVar = new c(this, null);
        while (cVar.hasNext()) {
            arrayList.add(cVar.next().asReadOnlyByteBuffer());
        }
        return arrayList;
    }

    @Override // com.explorestack.protobuf.ByteString
    public byte byteAt(int i10) {
        ByteString.checkIndex(i10, this.f14187a);
        return internalByteAt(i10);
    }

    @Override // com.explorestack.protobuf.ByteString
    public void copyTo(ByteBuffer byteBuffer) {
        this.f14188b.copyTo(byteBuffer);
        this.f14189c.copyTo(byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.ByteString
    public void copyToInternal(byte[] bArr, int i10, int i11, int i12) {
        int i13 = i10 + i12;
        int i14 = this.f14190d;
        if (i13 <= i14) {
            this.f14188b.copyToInternal(bArr, i10, i11, i12);
        } else if (i10 >= i14) {
            this.f14189c.copyToInternal(bArr, i10 - i14, i11, i12);
        } else {
            int i15 = i14 - i10;
            this.f14188b.copyToInternal(bArr, i10, i11, i15);
            this.f14189c.copyToInternal(bArr, 0, i11 + i15, i12 - i15);
        }
    }

    @Override // com.explorestack.protobuf.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        if (this.f14187a != byteString.size()) {
            return false;
        }
        if (this.f14187a == 0) {
            return true;
        }
        int peekCachedHashCode = peekCachedHashCode();
        int peekCachedHashCode2 = byteString.peekCachedHashCode();
        if (peekCachedHashCode != 0 && peekCachedHashCode2 != 0 && peekCachedHashCode != peekCachedHashCode2) {
            return false;
        }
        return h(byteString);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.ByteString
    public int getTreeDepth() {
        return this.f14191e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.ByteString
    public byte internalByteAt(int i10) {
        int i11 = this.f14190d;
        if (i10 < i11) {
            return this.f14188b.internalByteAt(i10);
        }
        return this.f14189c.internalByteAt(i10 - i11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.ByteString
    public boolean isBalanced() {
        if (this.f14187a >= i(this.f14191e)) {
            return true;
        }
        return false;
    }

    @Override // com.explorestack.protobuf.ByteString
    public boolean isValidUtf8() {
        int partialIsValidUtf8 = this.f14188b.partialIsValidUtf8(0, 0, this.f14190d);
        ByteString byteString = this.f14189c;
        if (byteString.partialIsValidUtf8(partialIsValidUtf8, 0, byteString.size()) != 0) {
            return false;
        }
        return true;
    }

    @Override // com.explorestack.protobuf.ByteString
    public n newCodedInput() {
        return n.i(asReadOnlyByteBufferList(), true);
    }

    @Override // com.explorestack.protobuf.ByteString
    public InputStream newInput() {
        return new d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.ByteString
    public int partialHash(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.f14190d;
        if (i13 <= i14) {
            return this.f14188b.partialHash(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.f14189c.partialHash(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.f14189c.partialHash(this.f14188b.partialHash(i10, i11, i15), 0, i12 - i15);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.ByteString
    public int partialIsValidUtf8(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.f14190d;
        if (i13 <= i14) {
            return this.f14188b.partialIsValidUtf8(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.f14189c.partialIsValidUtf8(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.f14189c.partialIsValidUtf8(this.f14188b.partialIsValidUtf8(i10, i11, i15), 0, i12 - i15);
    }

    @Override // com.explorestack.protobuf.ByteString
    public int size() {
        return this.f14187a;
    }

    @Override // com.explorestack.protobuf.ByteString
    public ByteString substring(int i10, int i11) {
        int checkRange = ByteString.checkRange(i10, i11, this.f14187a);
        if (checkRange == 0) {
            return ByteString.EMPTY;
        }
        if (checkRange == this.f14187a) {
            return this;
        }
        int i12 = this.f14190d;
        if (i11 <= i12) {
            return this.f14188b.substring(i10, i11);
        }
        if (i10 >= i12) {
            return this.f14189c.substring(i10 - i12, i11 - i12);
        }
        return new RopeByteString(this.f14188b.substring(i10), this.f14189c.substring(0, i11 - this.f14190d));
    }

    @Override // com.explorestack.protobuf.ByteString
    protected String toStringInternal(Charset charset) {
        return new String(toByteArray(), charset);
    }

    Object writeReplace() {
        return ByteString.wrap(toByteArray());
    }

    @Override // com.explorestack.protobuf.ByteString
    public void writeTo(OutputStream outputStream) throws IOException {
        this.f14188b.writeTo(outputStream);
        this.f14189c.writeTo(outputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.ByteString
    public void writeToInternal(OutputStream outputStream, int i10, int i11) throws IOException {
        int i12 = i10 + i11;
        int i13 = this.f14190d;
        if (i12 <= i13) {
            this.f14188b.writeToInternal(outputStream, i10, i11);
        } else if (i10 >= i13) {
            this.f14189c.writeToInternal(outputStream, i10 - i13, i11);
        } else {
            int i14 = i13 - i10;
            this.f14188b.writeToInternal(outputStream, i10, i14);
            this.f14189c.writeToInternal(outputStream, 0, i11 - i14);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.ByteString
    public void writeToReverse(l lVar) throws IOException {
        this.f14189c.writeToReverse(lVar);
        this.f14188b.writeToReverse(lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final ArrayDeque<ByteString> f14195a;

        private b() {
            this.f14195a = new ArrayDeque<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ByteString b(ByteString byteString, ByteString byteString2) {
            c(byteString);
            c(byteString2);
            ByteString pop = this.f14195a.pop();
            while (!this.f14195a.isEmpty()) {
                pop = new RopeByteString(this.f14195a.pop(), pop, null);
            }
            return pop;
        }

        private void c(ByteString byteString) {
            if (byteString.isBalanced()) {
                e(byteString);
            } else if (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                c(ropeByteString.f14188b);
                c(ropeByteString.f14189c);
            } else {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + byteString.getClass());
            }
        }

        private int d(int i10) {
            int binarySearch = Arrays.binarySearch(RopeByteString.f14186f, i10);
            if (binarySearch < 0) {
                return (-(binarySearch + 1)) - 1;
            }
            return binarySearch;
        }

        private void e(ByteString byteString) {
            int d10 = d(byteString.size());
            int i10 = RopeByteString.i(d10 + 1);
            if (!this.f14195a.isEmpty() && this.f14195a.peek().size() < i10) {
                int i11 = RopeByteString.i(d10);
                ByteString pop = this.f14195a.pop();
                while (!this.f14195a.isEmpty() && this.f14195a.peek().size() < i11) {
                    pop = new RopeByteString(this.f14195a.pop(), pop, null);
                }
                RopeByteString ropeByteString = new RopeByteString(pop, byteString, null);
                while (!this.f14195a.isEmpty()) {
                    if (this.f14195a.peek().size() >= RopeByteString.i(d(ropeByteString.size()) + 1)) {
                        break;
                    }
                    ropeByteString = new RopeByteString(this.f14195a.pop(), ropeByteString, null);
                }
                this.f14195a.push(ropeByteString);
                return;
            }
            this.f14195a.push(byteString);
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    private RopeByteString(ByteString byteString, ByteString byteString2) {
        this.f14188b = byteString;
        this.f14189c = byteString2;
        int size = byteString.size();
        this.f14190d = size;
        this.f14187a = size + byteString2.size();
        this.f14191e = Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1;
    }

    @Override // com.explorestack.protobuf.ByteString, java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<Byte> iterator2() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.explorestack.protobuf.ByteString
    public void writeTo(l lVar) throws IOException {
        this.f14188b.writeTo(lVar);
        this.f14189c.writeTo(lVar);
    }

    /* loaded from: classes3.dex */
    private class d extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        private c f14198a;

        /* renamed from: b  reason: collision with root package name */
        private ByteString.LeafByteString f14199b;

        /* renamed from: c  reason: collision with root package name */
        private int f14200c;

        /* renamed from: d  reason: collision with root package name */
        private int f14201d;

        /* renamed from: e  reason: collision with root package name */
        private int f14202e;

        /* renamed from: f  reason: collision with root package name */
        private int f14203f;

        public d() {
            l();
        }

        private void d() {
            if (this.f14199b != null) {
                int i10 = this.f14201d;
                int i11 = this.f14200c;
                if (i10 == i11) {
                    this.f14202e += i11;
                    this.f14201d = 0;
                    if (this.f14198a.hasNext()) {
                        ByteString.LeafByteString next = this.f14198a.next();
                        this.f14199b = next;
                        this.f14200c = next.size();
                        return;
                    }
                    this.f14199b = null;
                    this.f14200c = 0;
                }
            }
        }

        private int k() {
            return RopeByteString.this.size() - (this.f14202e + this.f14201d);
        }

        private void l() {
            c cVar = new c(RopeByteString.this, null);
            this.f14198a = cVar;
            ByteString.LeafByteString next = cVar.next();
            this.f14199b = next;
            this.f14200c = next.size();
            this.f14201d = 0;
            this.f14202e = 0;
        }

        private int m(byte[] bArr, int i10, int i11) {
            int i12 = i11;
            while (i12 > 0) {
                d();
                if (this.f14199b == null) {
                    break;
                }
                int min = Math.min(this.f14200c - this.f14201d, i12);
                if (bArr != null) {
                    this.f14199b.copyTo(bArr, this.f14201d, i10, min);
                    i10 += min;
                }
                this.f14201d += min;
                i12 -= min;
            }
            return i11 - i12;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return k();
        }

        @Override // java.io.InputStream
        public void mark(int i10) {
            this.f14203f = this.f14202e + this.f14201d;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) {
            bArr.getClass();
            if (i10 >= 0 && i11 >= 0 && i11 <= bArr.length - i10) {
                int m10 = m(bArr, i10, i11);
                if (m10 == 0) {
                    if (i11 > 0 || k() == 0) {
                        return -1;
                    }
                    return m10;
                }
                return m10;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            l();
            m(null, 0, this.f14203f);
        }

        @Override // java.io.InputStream
        public long skip(long j10) {
            if (j10 >= 0) {
                if (j10 > SieveCacheKt.NodeLinkMask) {
                    j10 = 2147483647L;
                }
                return m(null, 0, (int) j10);
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            d();
            ByteString.LeafByteString leafByteString = this.f14199b;
            if (leafByteString == null) {
                return -1;
            }
            int i10 = this.f14201d;
            this.f14201d = i10 + 1;
            return leafByteString.byteAt(i10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        }
    }
}
