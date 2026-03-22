package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
/* compiled from: StructProto.java */
/* loaded from: classes3.dex */
public final class y1 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.Descriptor f14711a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f14712b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.Descriptor f14713c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f14714d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.Descriptor f14715e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f14716f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.Descriptor f14717g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f14718h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f14719i = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u001cgoogle/protobuf/struct.proto\u0012\u000fgoogle.protobuf\"\u0084\u0001\n\u0006Struct\u00123\n\u0006fields\u0018\u0001 \u0003(\u000b2#.google.protobuf.Struct.FieldsEntry\u001aE\n\u000bFieldsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012%\n\u0005value\u0018\u0002 \u0001(\u000b2\u0016.google.protobuf.Value:\u00028\u0001\"ê\u0001\n\u0005Value\u00120\n\nnull_value\u0018\u0001 \u0001(\u000e2\u001a.google.protobuf.NullValueH\u0000\u0012\u0016\n\fnumber_value\u0018\u0002 \u0001(\u0001H\u0000\u0012\u0016\n\fstring_value\u0018\u0003 \u0001(\tH\u0000\u0012\u0014\n\nbool_value\u0018\u0004 \u0001(\bH\u0000\u0012/\n\fstruct_value\u0018\u0005 \u0001(\u000b2\u0017.google.protobuf.StructH\u0000\u00120\n\nlist_value\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.ListValueH\u0000B\u0006\n\u0004kind\"3\n\tListValue\u0012&\n\u0006values\u0018\u0001 \u0003(\u000b2\u0016.google.protobuf.Value*\u001b\n\tNullValue\u0012\u000e\n\nNULL_VALUE\u0010\u0000B\u007f\n\u0013com.google.protobufB\u000bStructProtoP\u0001Z/google.golang.org/protobuf/types/known/structpbø\u0001\u0001¢\u0002\u0003GPBª\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.Descriptor descriptor = a().getMessageTypes().get(0);
        f14711a = descriptor;
        f14712b = new GeneratedMessageV3.e(descriptor, new String[]{"Fields"});
        Descriptors.Descriptor descriptor2 = descriptor.getNestedTypes().get(0);
        f14713c = descriptor2;
        f14714d = new GeneratedMessageV3.e(descriptor2, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor3 = a().getMessageTypes().get(1);
        f14715e = descriptor3;
        f14716f = new GeneratedMessageV3.e(descriptor3, new String[]{"NullValue", "NumberValue", "StringValue", "BoolValue", "StructValue", "ListValue", "Kind"});
        Descriptors.Descriptor descriptor4 = a().getMessageTypes().get(2);
        f14717g = descriptor4;
        f14718h = new GeneratedMessageV3.e(descriptor4, new String[]{"Values"});
    }

    public static Descriptors.FileDescriptor a() {
        return f14719i;
    }
}
