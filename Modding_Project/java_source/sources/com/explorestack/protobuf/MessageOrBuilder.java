package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public interface MessageOrBuilder {
    List<String> findInitializationErrors();

    Map<Descriptors.FieldDescriptor, Object> getAllFields();

    Message getDefaultInstanceForType();

    /* renamed from: getDefaultInstanceForType  reason: collision with other method in class */
    /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    Descriptors.Descriptor getDescriptorForType();

    Object getField(Descriptors.FieldDescriptor fieldDescriptor);

    String getInitializationErrorString();

    Descriptors.FieldDescriptor getOneofFieldDescriptor(Descriptors.OneofDescriptor oneofDescriptor);

    Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10);

    int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor);

    j2 getUnknownFields();

    boolean hasField(Descriptors.FieldDescriptor fieldDescriptor);

    boolean hasOneof(Descriptors.OneofDescriptor oneofDescriptor);

    /* synthetic */ boolean isInitialized();
}
