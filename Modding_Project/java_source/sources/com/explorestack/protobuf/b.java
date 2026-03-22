package com.explorestack.protobuf;

import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.a;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* compiled from: AbstractParser.java */
/* loaded from: classes3.dex */
public abstract class b<MessageType extends MessageLite> implements j1<MessageType> {
    private static final y EMPTY_REGISTRY = y.b();

    private MessageType checkMessageInitialized(MessageType messagetype) throws InvalidProtocolBufferException {
        if (messagetype != null && !messagetype.isInitialized()) {
            throw newUninitializedMessageException(messagetype).b().setUnfinishedMessage(messagetype);
        }
        return messagetype;
    }

    private UninitializedMessageException newUninitializedMessageException(MessageType messagetype) {
        if (messagetype instanceof a) {
            return ((a) messagetype).newUninitializedMessageException();
        }
        return new UninitializedMessageException(messagetype);
    }

    @Override // com.explorestack.protobuf.j1
    public MessageType parseDelimitedFrom(InputStream inputStream, y yVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(m4648parsePartialDelimitedFrom(inputStream, yVar));
    }

    /* renamed from: parsePartialDelimitedFrom */
    public MessageType m4648parsePartialDelimitedFrom(InputStream inputStream, y yVar) throws InvalidProtocolBufferException {
        try {
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            return m4653parsePartialFrom((InputStream) new a.AbstractC0246a.C0247a(inputStream, n.D(read, inputStream)), yVar);
        } catch (IOException e10) {
            throw new InvalidProtocolBufferException(e10);
        }
    }

    @Override // com.explorestack.protobuf.j1
    public MessageType parseDelimitedFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return parseDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    /* renamed from: parsePartialDelimitedFrom */
    public MessageType m4647parsePartialDelimitedFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return m4648parsePartialDelimitedFrom(inputStream, EMPTY_REGISTRY);
    }

    /* renamed from: parsePartialFrom */
    public MessageType m4651parsePartialFrom(n nVar) throws InvalidProtocolBufferException {
        return (MessageType) parsePartialFrom(nVar, EMPTY_REGISTRY);
    }

    /* renamed from: parsePartialFrom */
    public MessageType m4650parsePartialFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        n newCodedInput = byteString.newCodedInput();
        MessageType messagetype = (MessageType) parsePartialFrom(newCodedInput, yVar);
        try {
            newCodedInput.a(0);
            return messagetype;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(messagetype);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.explorestack.protobuf.j1
    public MessageType parseFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
        return (MessageType) checkMessageInitialized((MessageLite) parsePartialFrom(nVar, yVar));
    }

    @Override // com.explorestack.protobuf.j1
    public MessageType parseFrom(n nVar) throws InvalidProtocolBufferException {
        return parseFrom(nVar, EMPTY_REGISTRY);
    }

    @Override // com.explorestack.protobuf.j1
    public MessageType parseFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(m4650parsePartialFrom(byteString, yVar));
    }

    /* renamed from: parsePartialFrom */
    public MessageType m4649parsePartialFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return m4650parsePartialFrom(byteString, EMPTY_REGISTRY);
    }

    @Override // com.explorestack.protobuf.j1
    public MessageType parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return parseFrom(byteString, EMPTY_REGISTRY);
    }

    /* renamed from: parsePartialFrom */
    public MessageType m4656parsePartialFrom(byte[] bArr, int i10, int i11, y yVar) throws InvalidProtocolBufferException {
        n m10 = n.m(bArr, i10, i11);
        MessageType messagetype = (MessageType) parsePartialFrom(m10, yVar);
        try {
            m10.a(0);
            return messagetype;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(messagetype);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.explorestack.protobuf.j1
    public MessageType parseFrom(ByteBuffer byteBuffer, y yVar) throws InvalidProtocolBufferException {
        n j10 = n.j(byteBuffer);
        MessageLite messageLite = (MessageLite) parsePartialFrom(j10, yVar);
        try {
            j10.a(0);
            return (MessageType) checkMessageInitialized(messageLite);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(messageLite);
        }
    }

    /* renamed from: parsePartialFrom */
    public MessageType m4655parsePartialFrom(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
        return m4656parsePartialFrom(bArr, i10, i11, EMPTY_REGISTRY);
    }

    /* renamed from: parsePartialFrom */
    public MessageType m4657parsePartialFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return m4656parsePartialFrom(bArr, 0, bArr.length, yVar);
    }

    @Override // com.explorestack.protobuf.j1
    public MessageType parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return parseFrom(byteBuffer, EMPTY_REGISTRY);
    }

    /* renamed from: parsePartialFrom */
    public MessageType m4654parsePartialFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return m4656parsePartialFrom(bArr, 0, bArr.length, EMPTY_REGISTRY);
    }

    /* renamed from: parseFrom */
    public MessageType m4646parseFrom(byte[] bArr, int i10, int i11, y yVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(m4656parsePartialFrom(bArr, i10, i11, yVar));
    }

    /* renamed from: parsePartialFrom */
    public MessageType m4653parsePartialFrom(InputStream inputStream, y yVar) throws InvalidProtocolBufferException {
        n g10 = n.g(inputStream);
        MessageType messagetype = (MessageType) parsePartialFrom(g10, yVar);
        try {
            g10.a(0);
            return messagetype;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(messagetype);
        }
    }

    /* renamed from: parseFrom */
    public MessageType m4645parseFrom(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
        return m4646parseFrom(bArr, i10, i11, EMPTY_REGISTRY);
    }

    @Override // com.explorestack.protobuf.j1
    public MessageType parseFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
        return m4646parseFrom(bArr, 0, bArr.length, yVar);
    }

    @Override // com.explorestack.protobuf.j1
    public MessageType parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return parseFrom(bArr, EMPTY_REGISTRY);
    }

    @Override // com.explorestack.protobuf.j1
    public MessageType parseFrom(InputStream inputStream, y yVar) throws InvalidProtocolBufferException {
        return checkMessageInitialized(m4653parsePartialFrom(inputStream, yVar));
    }

    /* renamed from: parsePartialFrom */
    public MessageType m4652parsePartialFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return m4653parsePartialFrom(inputStream, EMPTY_REGISTRY);
    }

    @Override // com.explorestack.protobuf.j1
    public MessageType parseFrom(InputStream inputStream) throws InvalidProtocolBufferException {
        return parseFrom(inputStream, EMPTY_REGISTRY);
    }
}
