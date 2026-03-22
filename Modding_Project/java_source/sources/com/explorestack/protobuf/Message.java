package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.MessageLite;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3.dex */
public interface Message extends MessageLite, MessageOrBuilder {

    /* loaded from: classes3.dex */
    public interface Builder extends MessageLite.Builder, MessageOrBuilder {
        Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        @Override // 
        Message build();

        @Override // 
        Message buildPartial();

        @Override // 
        Builder clear();

        Builder clearField(Descriptors.FieldDescriptor fieldDescriptor);

        Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor);

        @Override // 
        Builder clone();

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: getDefaultInstanceForType */
        /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

        Descriptors.Descriptor getDescriptorForType();

        Builder getFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor);

        Builder getRepeatedFieldBuilder(Descriptors.FieldDescriptor fieldDescriptor, int i10);

        @Override // com.explorestack.protobuf.MessageOrBuilder
        /* synthetic */ boolean isInitialized();

        @Override // 
        boolean mergeDelimitedFrom(InputStream inputStream) throws IOException;

        @Override // 
        boolean mergeDelimitedFrom(InputStream inputStream, y yVar) throws IOException;

        @Override // 
        Builder mergeFrom(ByteString byteString) throws InvalidProtocolBufferException;

        @Override // 
        Builder mergeFrom(ByteString byteString, y yVar) throws InvalidProtocolBufferException;

        Builder mergeFrom(Message message);

        @Override // 
        Builder mergeFrom(n nVar) throws IOException;

        @Override // 
        Builder mergeFrom(n nVar, y yVar) throws IOException;

        @Override // 
        Builder mergeFrom(InputStream inputStream) throws IOException;

        @Override // 
        Builder mergeFrom(InputStream inputStream, y yVar) throws IOException;

        @Override // 
        Builder mergeFrom(byte[] bArr) throws InvalidProtocolBufferException;

        @Override // 
        Builder mergeFrom(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException;

        @Override // 
        Builder mergeFrom(byte[] bArr, int i10, int i11, y yVar) throws InvalidProtocolBufferException;

        @Override // 
        Builder mergeFrom(byte[] bArr, y yVar) throws InvalidProtocolBufferException;

        Builder mergeUnknownFields(j2 j2Var);

        Builder newBuilderForField(Descriptors.FieldDescriptor fieldDescriptor);

        Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj);

        Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj);

        Builder setUnknownFields(j2 j2Var);
    }

    boolean equals(Object obj);

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    @Override // 
    j1<? extends Message> getParserForType();

    int hashCode();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();

    @Override // 
    Builder newBuilderForType();

    @Override // 
    Builder toBuilder();

    String toString();
}
