package com.explorestack.protobuf;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.a;
import com.explorestack.protobuf.a.AbstractC0246a;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* compiled from: AbstractMessageLite.java */
/* loaded from: classes3.dex */
public abstract class a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0246a<MessageType, BuilderType>> implements MessageLite {
    protected int memoizedHashCode = 0;

    /* compiled from: AbstractMessageLite.java */
    /* renamed from: com.explorestack.protobuf.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC0246a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0246a<MessageType, BuilderType>> implements MessageLite.Builder {
        @Deprecated
        protected static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
            addAll((Iterable) iterable, (List) collection);
        }

        private static <T> void addAllCheckingNulls(Iterable<T> iterable, List<? super T> list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
            }
            int size = list.size();
            for (T t10 : iterable) {
                if (t10 == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    throw new NullPointerException(str);
                }
                list.add(t10);
            }
        }

        private String getReadingExceptionMessage(String str) {
            return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static UninitializedMessageException newUninitializedMessageException(MessageLite messageLite) {
            return new UninitializedMessageException(messageLite);
        }

        @Override // 
        /* renamed from: clone */
        public abstract BuilderType mo4628clone();

        protected abstract BuilderType internalMergeFrom(MessageType messagetype);

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream, y yVar) throws IOException {
            int read = inputStream.read();
            if (read == -1) {
                return false;
            }
            mergeFrom((InputStream) new C0247a(inputStream, n.D(read, inputStream)), yVar);
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public abstract BuilderType mergeFrom(n nVar, y yVar) throws IOException;

        /* JADX INFO: Access modifiers changed from: protected */
        public static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
            i0.a(iterable);
            if (iterable instanceof n0) {
                List<?> underlyingElements = ((n0) iterable).getUnderlyingElements();
                n0 n0Var = (n0) list;
                int size = list.size();
                for (Object obj : underlyingElements) {
                    if (obj == null) {
                        String str = "Element at index " + (n0Var.size() - size) + " is null.";
                        for (int size2 = n0Var.size() - 1; size2 >= size; size2--) {
                            n0Var.remove(size2);
                        }
                        throw new NullPointerException(str);
                    } else if (obj instanceof ByteString) {
                        n0Var.b((ByteString) obj);
                    } else {
                        n0Var.add((String) obj);
                    }
                }
            } else if (iterable instanceof k1) {
                list.addAll((Collection) iterable);
            } else {
                addAllCheckingNulls(iterable, list);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: AbstractMessageLite.java */
        /* renamed from: com.explorestack.protobuf.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0247a extends FilterInputStream {

            /* renamed from: a  reason: collision with root package name */
            private int f14212a;

            /* JADX INFO: Access modifiers changed from: package-private */
            public C0247a(InputStream inputStream, int i10) {
                super(inputStream);
                this.f14212a = i10;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int available() throws IOException {
                return Math.min(super.available(), this.f14212a);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                if (this.f14212a <= 0) {
                    return -1;
                }
                int read = super.read();
                if (read >= 0) {
                    this.f14212a--;
                }
                return read;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j10) throws IOException {
                long skip = super.skip(Math.min(j10, this.f14212a));
                if (skip >= 0) {
                    this.f14212a = (int) (this.f14212a - skip);
                }
                return skip;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i10, int i11) throws IOException {
                int i12 = this.f14212a;
                if (i12 <= 0) {
                    return -1;
                }
                int read = super.read(bArr, i10, Math.min(i11, i12));
                if (read >= 0) {
                    this.f14212a -= read;
                }
                return read;
            }
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public boolean mergeDelimitedFrom(InputStream inputStream) throws IOException {
            return mergeDelimitedFrom(inputStream, y.b());
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(n nVar) throws IOException {
            return mergeFrom(nVar, y.b());
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(ByteString byteString) throws InvalidProtocolBufferException {
            try {
                n newCodedInput = byteString.newCodedInput();
                mergeFrom(newCodedInput);
                newCodedInput.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(getReadingExceptionMessage("ByteString"), e11);
            }
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            try {
                n newCodedInput = byteString.newCodedInput();
                mergeFrom(newCodedInput, yVar);
                newCodedInput.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(getReadingExceptionMessage("ByteString"), e11);
            }
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return mergeFrom(bArr, 0, bArr.length);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            try {
                n m10 = n.m(bArr, i10, i11);
                mergeFrom(m10);
                m10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(getReadingExceptionMessage("byte array"), e11);
            }
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return mergeFrom(bArr, 0, bArr.length, yVar);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(byte[] bArr, int i10, int i11, y yVar) throws InvalidProtocolBufferException {
            try {
                n m10 = n.m(bArr, i10, i11);
                mergeFrom(m10, yVar);
                m10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException(getReadingExceptionMessage("byte array"), e11);
            }
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(InputStream inputStream) throws IOException {
            n g10 = n.g(inputStream);
            mergeFrom(g10);
            g10.a(0);
            return this;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public BuilderType mergeFrom(InputStream inputStream, y yVar) throws IOException {
            n g10 = n.g(inputStream);
            mergeFrom(g10, yVar);
            g10.a(0);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.MessageLite.Builder
        public BuilderType mergeFrom(MessageLite messageLite) {
            if (mo4630getDefaultInstanceForType().getClass().isInstance(messageLite)) {
                return (BuilderType) internalMergeFrom((a) messageLite);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
    }

    @Deprecated
    protected static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
        AbstractC0246a.addAll((Iterable) iterable, (List) collection);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void checkByteStringIsUtf8(ByteString byteString) throws IllegalArgumentException {
        if (byteString.isValidUtf8()) {
            return;
        }
        throw new IllegalArgumentException("Byte string is not UTF-8.");
    }

    private String getSerializingExceptionMessage(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    int getMemoizedSerializedSize() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSerializedSize(q1 q1Var) {
        int memoizedSerializedSize = getMemoizedSerializedSize();
        if (memoizedSerializedSize == -1) {
            int serializedSize = q1Var.getSerializedSize(this);
            setMemoizedSerializedSize(serializedSize);
            return serializedSize;
        }
        return memoizedSerializedSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UninitializedMessageException newUninitializedMessageException() {
        return new UninitializedMessageException(this);
    }

    void setMemoizedSerializedSize(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.explorestack.protobuf.MessageLite
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            CodedOutputStream j02 = CodedOutputStream.j0(bArr);
            writeTo(j02);
            j02.d();
            return bArr;
        } catch (IOException e10) {
            throw new RuntimeException(getSerializingExceptionMessage("byte array"), e10);
        }
    }

    @Override // com.explorestack.protobuf.MessageLite
    public ByteString toByteString() {
        try {
            ByteString.CodedBuilder newCodedBuilder = ByteString.newCodedBuilder(getSerializedSize());
            writeTo(newCodedBuilder.getCodedOutput());
            return newCodedBuilder.build();
        } catch (IOException e10) {
            throw new RuntimeException(getSerializingExceptionMessage("ByteString"), e10);
        }
    }

    @Override // com.explorestack.protobuf.MessageLite
    public void writeDelimitedTo(OutputStream outputStream) throws IOException {
        int serializedSize = getSerializedSize();
        CodedOutputStream i02 = CodedOutputStream.i0(outputStream, CodedOutputStream.K(CodedOutputStream.M(serializedSize) + serializedSize));
        i02.Q0(serializedSize);
        writeTo(i02);
        i02.e0();
    }

    @Override // com.explorestack.protobuf.MessageLite
    public void writeTo(OutputStream outputStream) throws IOException {
        CodedOutputStream i02 = CodedOutputStream.i0(outputStream, CodedOutputStream.K(getSerializedSize()));
        writeTo(i02);
        i02.e0();
    }

    protected static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
        AbstractC0246a.addAll((Iterable) iterable, (List) list);
    }
}
