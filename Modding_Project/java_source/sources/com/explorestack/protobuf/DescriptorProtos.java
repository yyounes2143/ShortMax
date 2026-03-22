package com.explorestack.protobuf;

import androidx.compose.material.TextFieldImplKt;
import androidx.compose.runtime.ComposerKt;
import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.j2;
import com.ss.ttm.player.MediaPlayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.CharCompanionObject;
/* loaded from: classes3.dex */
public final class DescriptorProtos {
    private static final Descriptors.Descriptor A;
    private static final GeneratedMessageV3.e B;
    private static final Descriptors.Descriptor C;
    private static final GeneratedMessageV3.e D;
    private static final Descriptors.Descriptor E;
    private static final GeneratedMessageV3.e F;
    private static final Descriptors.Descriptor G;
    private static final GeneratedMessageV3.e H;
    private static final Descriptors.Descriptor I;
    private static final GeneratedMessageV3.e J;
    private static final Descriptors.Descriptor K;
    private static final GeneratedMessageV3.e L;
    private static final Descriptors.Descriptor M;
    private static final GeneratedMessageV3.e N;
    private static final Descriptors.Descriptor O;
    private static final GeneratedMessageV3.e P;
    private static final Descriptors.Descriptor Q;
    private static final GeneratedMessageV3.e R;
    private static final Descriptors.Descriptor S;
    private static final GeneratedMessageV3.e T;
    private static final Descriptors.Descriptor U;
    private static final GeneratedMessageV3.e V;
    private static final Descriptors.Descriptor W;
    private static final GeneratedMessageV3.e X;
    private static final Descriptors.Descriptor Y;
    private static final GeneratedMessageV3.e Z;

    /* renamed from: a  reason: collision with root package name */
    private static final Descriptors.Descriptor f13601a;

    /* renamed from: a0  reason: collision with root package name */
    private static final Descriptors.Descriptor f13602a0;

    /* renamed from: b  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13603b;

    /* renamed from: b0  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13604b0;

    /* renamed from: c  reason: collision with root package name */
    private static final Descriptors.Descriptor f13605c;

    /* renamed from: c0  reason: collision with root package name */
    private static Descriptors.FileDescriptor f13606c0 = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n google/protobuf/descriptor.proto\u0012\u000fgoogle.protobuf\"G\n\u0011FileDescriptorSet\u00122\n\u0004file\u0018\u0001 \u0003(\u000b2$.google.protobuf.FileDescriptorProto\"Û\u0003\n\u0013FileDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007package\u0018\u0002 \u0001(\t\u0012\u0012\n\ndependency\u0018\u0003 \u0003(\t\u0012\u0019\n\u0011public_dependency\u0018\n \u0003(\u0005\u0012\u0017\n\u000fweak_dependency\u0018\u000b \u0003(\u0005\u00126\n\fmessage_type\u0018\u0004 \u0003(\u000b2 .google.protobuf.DescriptorProto\u00127\n\tenum_type\u0018\u0005 \u0003(\u000b2$.google.protobuf.EnumDescriptorProto\u00128\n\u0007service\u0018\u0006 \u0003(\u000b2'.google.protobuf.ServiceDescriptorProto\u00128\n\textension\u0018\u0007 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u0012-\n\u0007options\u0018\b \u0001(\u000b2\u001c.google.protobuf.FileOptions\u00129\n\u0010source_code_info\u0018\t \u0001(\u000b2\u001f.google.protobuf.SourceCodeInfo\u0012\u000e\n\u0006syntax\u0018\f \u0001(\t\"©\u0005\n\u000fDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00124\n\u0005field\u0018\u0002 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u00128\n\textension\u0018\u0006 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u00125\n\u000bnested_type\u0018\u0003 \u0003(\u000b2 .google.protobuf.DescriptorProto\u00127\n\tenum_type\u0018\u0004 \u0003(\u000b2$.google.protobuf.EnumDescriptorProto\u0012H\n\u000fextension_range\u0018\u0005 \u0003(\u000b2/.google.protobuf.DescriptorProto.ExtensionRange\u00129\n\noneof_decl\u0018\b \u0003(\u000b2%.google.protobuf.OneofDescriptorProto\u00120\n\u0007options\u0018\u0007 \u0001(\u000b2\u001f.google.protobuf.MessageOptions\u0012F\n\u000ereserved_range\u0018\t \u0003(\u000b2..google.protobuf.DescriptorProto.ReservedRange\u0012\u0015\n\rreserved_name\u0018\n \u0003(\t\u001ae\n\u000eExtensionRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\u00127\n\u0007options\u0018\u0003 \u0001(\u000b2&.google.protobuf.ExtensionRangeOptions\u001a+\n\rReservedRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\"g\n\u0015ExtensionRangeOptions\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"Õ\u0005\n\u0014FieldDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0003 \u0001(\u0005\u0012:\n\u0005label\u0018\u0004 \u0001(\u000e2+.google.protobuf.FieldDescriptorProto.Label\u00128\n\u0004type\u0018\u0005 \u0001(\u000e2*.google.protobuf.FieldDescriptorProto.Type\u0012\u0011\n\ttype_name\u0018\u0006 \u0001(\t\u0012\u0010\n\bextendee\u0018\u0002 \u0001(\t\u0012\u0015\n\rdefault_value\u0018\u0007 \u0001(\t\u0012\u0013\n\u000boneof_index\u0018\t \u0001(\u0005\u0012\u0011\n\tjson_name\u0018\n \u0001(\t\u0012.\n\u0007options\u0018\b \u0001(\u000b2\u001d.google.protobuf.FieldOptions\u0012\u0017\n\u000fproto3_optional\u0018\u0011 \u0001(\b\"¶\u0002\n\u0004Type\u0012\u000f\n\u000bTYPE_DOUBLE\u0010\u0001\u0012\u000e\n\nTYPE_FLOAT\u0010\u0002\u0012\u000e\n\nTYPE_INT64\u0010\u0003\u0012\u000f\n\u000bTYPE_UINT64\u0010\u0004\u0012\u000e\n\nTYPE_INT32\u0010\u0005\u0012\u0010\n\fTYPE_FIXED64\u0010\u0006\u0012\u0010\n\fTYPE_FIXED32\u0010\u0007\u0012\r\n\tTYPE_BOOL\u0010\b\u0012\u000f\n\u000bTYPE_STRING\u0010\t\u0012\u000e\n\nTYPE_GROUP\u0010\n\u0012\u0010\n\fTYPE_MESSAGE\u0010\u000b\u0012\u000e\n\nTYPE_BYTES\u0010\f\u0012\u000f\n\u000bTYPE_UINT32\u0010\r\u0012\r\n\tTYPE_ENUM\u0010\u000e\u0012\u0011\n\rTYPE_SFIXED32\u0010\u000f\u0012\u0011\n\rTYPE_SFIXED64\u0010\u0010\u0012\u000f\n\u000bTYPE_SINT32\u0010\u0011\u0012\u000f\n\u000bTYPE_SINT64\u0010\u0012\"C\n\u0005Label\u0012\u0012\n\u000eLABEL_OPTIONAL\u0010\u0001\u0012\u0012\n\u000eLABEL_REQUIRED\u0010\u0002\u0012\u0012\n\u000eLABEL_REPEATED\u0010\u0003\"T\n\u0014OneofDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012.\n\u0007options\u0018\u0002 \u0001(\u000b2\u001d.google.protobuf.OneofOptions\"¤\u0002\n\u0013EnumDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00128\n\u0005value\u0018\u0002 \u0003(\u000b2).google.protobuf.EnumValueDescriptorProto\u0012-\n\u0007options\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.EnumOptions\u0012N\n\u000ereserved_range\u0018\u0004 \u0003(\u000b26.google.protobuf.EnumDescriptorProto.EnumReservedRange\u0012\u0015\n\rreserved_name\u0018\u0005 \u0003(\t\u001a/\n\u0011EnumReservedRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\"l\n\u0018EnumValueDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0002 \u0001(\u0005\u00122\n\u0007options\u0018\u0003 \u0001(\u000b2!.google.protobuf.EnumValueOptions\"\u0090\u0001\n\u0016ServiceDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00126\n\u0006method\u0018\u0002 \u0003(\u000b2&.google.protobuf.MethodDescriptorProto\u00120\n\u0007options\u0018\u0003 \u0001(\u000b2\u001f.google.protobuf.ServiceOptions\"Á\u0001\n\u0015MethodDescriptorProto\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0012\n\ninput_type\u0018\u0002 \u0001(\t\u0012\u0013\n\u000boutput_type\u0018\u0003 \u0001(\t\u0012/\n\u0007options\u0018\u0004 \u0001(\u000b2\u001e.google.protobuf.MethodOptions\u0012\u001f\n\u0010client_streaming\u0018\u0005 \u0001(\b:\u0005false\u0012\u001f\n\u0010server_streaming\u0018\u0006 \u0001(\b:\u0005false\"¥\u0006\n\u000bFileOptions\u0012\u0014\n\fjava_package\u0018\u0001 \u0001(\t\u0012\u001c\n\u0014java_outer_classname\u0018\b \u0001(\t\u0012\"\n\u0013java_multiple_files\u0018\n \u0001(\b:\u0005false\u0012)\n\u001djava_generate_equals_and_hash\u0018\u0014 \u0001(\bB\u0002\u0018\u0001\u0012%\n\u0016java_string_check_utf8\u0018\u001b \u0001(\b:\u0005false\u0012F\n\foptimize_for\u0018\t \u0001(\u000e2).google.protobuf.FileOptions.OptimizeMode:\u0005SPEED\u0012\u0012\n\ngo_package\u0018\u000b \u0001(\t\u0012\"\n\u0013cc_generic_services\u0018\u0010 \u0001(\b:\u0005false\u0012$\n\u0015java_generic_services\u0018\u0011 \u0001(\b:\u0005false\u0012\"\n\u0013py_generic_services\u0018\u0012 \u0001(\b:\u0005false\u0012#\n\u0014php_generic_services\u0018* \u0001(\b:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0017 \u0001(\b:\u0005false\u0012\u001e\n\u0010cc_enable_arenas\u0018\u001f \u0001(\b:\u0004true\u0012\u0019\n\u0011objc_class_prefix\u0018$ \u0001(\t\u0012\u0018\n\u0010csharp_namespace\u0018% \u0001(\t\u0012\u0014\n\fswift_prefix\u0018' \u0001(\t\u0012\u0018\n\u0010php_class_prefix\u0018( \u0001(\t\u0012\u0015\n\rphp_namespace\u0018) \u0001(\t\u0012\u001e\n\u0016php_metadata_namespace\u0018, \u0001(\t\u0012\u0014\n\fruby_package\u0018- \u0001(\t\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\":\n\fOptimizeMode\u0012\t\n\u0005SPEED\u0010\u0001\u0012\r\n\tCODE_SIZE\u0010\u0002\u0012\u0010\n\fLITE_RUNTIME\u0010\u0003*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\b&\u0010'\"\u0084\u0002\n\u000eMessageOptions\u0012&\n\u0017message_set_wire_format\u0018\u0001 \u0001(\b:\u0005false\u0012.\n\u001fno_standard_descriptor_accessor\u0018\u0002 \u0001(\b:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\b:\u0005false\u0012\u0011\n\tmap_entry\u0018\u0007 \u0001(\b\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\b\u0004\u0010\u0005J\u0004\b\u0005\u0010\u0006J\u0004\b\u0006\u0010\u0007J\u0004\b\b\u0010\tJ\u0004\b\t\u0010\n\"\u009e\u0003\n\fFieldOptions\u0012:\n\u0005ctype\u0018\u0001 \u0001(\u000e2#.google.protobuf.FieldOptions.CType:\u0006STRING\u0012\u000e\n\u0006packed\u0018\u0002 \u0001(\b\u0012?\n\u0006jstype\u0018\u0006 \u0001(\u000e2$.google.protobuf.FieldOptions.JSType:\tJS_NORMAL\u0012\u0013\n\u0004lazy\u0018\u0005 \u0001(\b:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\b:\u0005false\u0012\u0013\n\u0004weak\u0018\n \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\"/\n\u0005CType\u0012\n\n\u0006STRING\u0010\u0000\u0012\b\n\u0004CORD\u0010\u0001\u0012\u0010\n\fSTRING_PIECE\u0010\u0002\"5\n\u0006JSType\u0012\r\n\tJS_NORMAL\u0010\u0000\u0012\r\n\tJS_STRING\u0010\u0001\u0012\r\n\tJS_NUMBER\u0010\u0002*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\b\u0004\u0010\u0005\"^\n\fOneofOptions\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u0093\u0001\n\u000bEnumOptions\u0012\u0013\n\u000ballow_alias\u0018\u0002 \u0001(\b\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\b\u0005\u0010\u0006\"}\n\u0010EnumValueOptions\u0012\u0019\n\ndeprecated\u0018\u0001 \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"{\n\u000eServiceOptions\u0012\u0019\n\ndeprecated\u0018! \u0001(\b:\u0005false\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u00ad\u0002\n\rMethodOptions\u0012\u0019\n\ndeprecated\u0018! \u0001(\b:\u0005false\u0012_\n\u0011idempotency_level\u0018\" \u0001(\u000e2/.google.protobuf.MethodOptions.IdempotencyLevel:\u0013IDEMPOTENCY_UNKNOWN\u0012C\n\u0014uninterpreted_option\u0018ç\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\"P\n\u0010IdempotencyLevel\u0012\u0017\n\u0013IDEMPOTENCY_UNKNOWN\u0010\u0000\u0012\u0013\n\u000fNO_SIDE_EFFECTS\u0010\u0001\u0012\u000e\n\nIDEMPOTENT\u0010\u0002*\t\bè\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u009e\u0002\n\u0013UninterpretedOption\u0012;\n\u0004name\u0018\u0002 \u0003(\u000b2-.google.protobuf.UninterpretedOption.NamePart\u0012\u0018\n\u0010identifier_value\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012positive_int_value\u0018\u0004 \u0001(\u0004\u0012\u001a\n\u0012negative_int_value\u0018\u0005 \u0001(\u0003\u0012\u0014\n\fdouble_value\u0018\u0006 \u0001(\u0001\u0012\u0014\n\fstring_value\u0018\u0007 \u0001(\f\u0012\u0017\n\u000faggregate_value\u0018\b \u0001(\t\u001a3\n\bNamePart\u0012\u0011\n\tname_part\u0018\u0001 \u0002(\t\u0012\u0014\n\fis_extension\u0018\u0002 \u0002(\b\"Õ\u0001\n\u000eSourceCodeInfo\u0012:\n\blocation\u0018\u0001 \u0003(\u000b2(.google.protobuf.SourceCodeInfo.Location\u001a\u0086\u0001\n\bLocation\u0012\u0010\n\u0004path\u0018\u0001 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0010\n\u0004span\u0018\u0002 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0018\n\u0010leading_comments\u0018\u0003 \u0001(\t\u0012\u0019\n\u0011trailing_comments\u0018\u0004 \u0001(\t\u0012!\n\u0019leading_detached_comments\u0018\u0006 \u0003(\t\"§\u0001\n\u0011GeneratedCodeInfo\u0012A\n\nannotation\u0018\u0001 \u0003(\u000b2-.google.protobuf.GeneratedCodeInfo.Annotation\u001aO\n\nAnnotation\u0012\u0010\n\u0004path\u0018\u0001 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0013\n\u000bsource_file\u0018\u0002 \u0001(\t\u0012\r\n\u0005begin\u0018\u0003 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0004 \u0001(\u0005B~\n\u0013com.google.protobufB\u0010DescriptorProtosH\u0001Z-google.golang.org/protobuf/types/descriptorpbø\u0001\u0001¢\u0002\u0003GPBª\u0002\u001aGoogle.Protobuf.Reflection"}, new Descriptors.FileDescriptor[0]);

    /* renamed from: d  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13607d;

    /* renamed from: e  reason: collision with root package name */
    private static final Descriptors.Descriptor f13608e;

    /* renamed from: f  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13609f;

    /* renamed from: g  reason: collision with root package name */
    private static final Descriptors.Descriptor f13610g;

    /* renamed from: h  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13611h;

    /* renamed from: i  reason: collision with root package name */
    private static final Descriptors.Descriptor f13612i;

    /* renamed from: j  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13613j;

    /* renamed from: k  reason: collision with root package name */
    private static final Descriptors.Descriptor f13614k;

    /* renamed from: l  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13615l;

    /* renamed from: m  reason: collision with root package name */
    private static final Descriptors.Descriptor f13616m;

    /* renamed from: n  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13617n;

    /* renamed from: o  reason: collision with root package name */
    private static final Descriptors.Descriptor f13618o;

    /* renamed from: p  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13619p;

    /* renamed from: q  reason: collision with root package name */
    private static final Descriptors.Descriptor f13620q;

    /* renamed from: r  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13621r;

    /* renamed from: s  reason: collision with root package name */
    private static final Descriptors.Descriptor f13622s;

    /* renamed from: t  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13623t;

    /* renamed from: u  reason: collision with root package name */
    private static final Descriptors.Descriptor f13624u;

    /* renamed from: v  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13625v;

    /* renamed from: w  reason: collision with root package name */
    private static final Descriptors.Descriptor f13626w;

    /* renamed from: x  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13627x;

    /* renamed from: y  reason: collision with root package name */
    private static final Descriptors.Descriptor f13628y;

    /* renamed from: z  reason: collision with root package name */
    private static final GeneratedMessageV3.e f13629z;

    /* loaded from: classes3.dex */
    public static final class DescriptorProto extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: m  reason: collision with root package name */
        private static final DescriptorProto f13630m = new DescriptorProto();
        @Deprecated

        /* renamed from: n  reason: collision with root package name */
        public static final j1<DescriptorProto> f13631n = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f13632a;

        /* renamed from: b  reason: collision with root package name */
        private volatile Object f13633b;

        /* renamed from: c  reason: collision with root package name */
        private List<FieldDescriptorProto> f13634c;

        /* renamed from: d  reason: collision with root package name */
        private List<FieldDescriptorProto> f13635d;

        /* renamed from: e  reason: collision with root package name */
        private List<DescriptorProto> f13636e;

        /* renamed from: f  reason: collision with root package name */
        private List<EnumDescriptorProto> f13637f;

        /* renamed from: g  reason: collision with root package name */
        private List<ExtensionRange> f13638g;

        /* renamed from: h  reason: collision with root package name */
        private List<OneofDescriptorProto> f13639h;

        /* renamed from: i  reason: collision with root package name */
        private MessageOptions f13640i;

        /* renamed from: j  reason: collision with root package name */
        private List<ReservedRange> f13641j;

        /* renamed from: k  reason: collision with root package name */
        private n0 f13642k;

        /* renamed from: l  reason: collision with root package name */
        private byte f13643l;

        /* loaded from: classes3.dex */
        public static final class ExtensionRange extends GeneratedMessageV3 implements MessageOrBuilder {

            /* renamed from: f  reason: collision with root package name */
            private static final ExtensionRange f13644f = new ExtensionRange();
            @Deprecated

            /* renamed from: g  reason: collision with root package name */
            public static final j1<ExtensionRange> f13645g = new a();

            /* renamed from: a  reason: collision with root package name */
            private int f13646a;

            /* renamed from: b  reason: collision with root package name */
            private int f13647b;

            /* renamed from: c  reason: collision with root package name */
            private int f13648c;

            /* renamed from: d  reason: collision with root package name */
            private ExtensionRangeOptions f13649d;

            /* renamed from: e  reason: collision with root package name */
            private byte f13650e;

            /* loaded from: classes3.dex */
            static class a extends com.explorestack.protobuf.b<ExtensionRange> {
                a() {
                }

                @Override // com.explorestack.protobuf.j1
                /* renamed from: a */
                public ExtensionRange parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new ExtensionRange(nVar, yVar);
                }
            }

            public static ExtensionRange g() {
                return f13644f;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.f13610g;
            }

            public static b s() {
                return f13644f.toBuilder();
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof ExtensionRange)) {
                    return super.equals(obj);
                }
                ExtensionRange extensionRange = (ExtensionRange) obj;
                if (r() != extensionRange.r()) {
                    return false;
                }
                if ((r() && k() != extensionRange.k()) || n() != extensionRange.n()) {
                    return false;
                }
                if ((n() && i() != extensionRange.i()) || q() != extensionRange.q()) {
                    return false;
                }
                if ((!q() || j().equals(extensionRange.j())) && this.unknownFields.equals(extensionRange.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<ExtensionRange> getParserForType() {
                return f13645g;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if ((this.f13646a & 1) != 0) {
                    i10 = CodedOutputStream.x(1, this.f13647b);
                } else {
                    i10 = 0;
                }
                if ((this.f13646a & 2) != 0) {
                    i10 += CodedOutputStream.x(2, this.f13648c);
                }
                if ((this.f13646a & 4) != 0) {
                    i10 += CodedOutputStream.G(3, j());
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: h */
            public ExtensionRange mo4630getDefaultInstanceForType() {
                return f13644f;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (r()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + k();
                }
                if (n()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + i();
                }
                if (q()) {
                    hashCode = (((hashCode * 37) + 3) * 53) + j().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            public int i() {
                return this.f13648c;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13611h.d(ExtensionRange.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.f13650e;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                if (q() && !j().isInitialized()) {
                    this.f13650e = (byte) 0;
                    return false;
                }
                this.f13650e = (byte) 1;
                return true;
            }

            public ExtensionRangeOptions j() {
                ExtensionRangeOptions extensionRangeOptions = this.f13649d;
                if (extensionRangeOptions == null) {
                    return ExtensionRangeOptions.k();
                }
                return extensionRangeOptions;
            }

            public int k() {
                return this.f13647b;
            }

            public boolean n() {
                if ((this.f13646a & 2) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new ExtensionRange();
            }

            public boolean q() {
                if ((this.f13646a & 4) != 0) {
                    return true;
                }
                return false;
            }

            public boolean r() {
                if ((this.f13646a & 1) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: t */
            public b newBuilderForType() {
                return s();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            /* renamed from: u */
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: v */
            public b toBuilder() {
                if (this == f13644f) {
                    return new b();
                }
                return new b().o(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.f13646a & 1) != 0) {
                    codedOutputStream.H0(1, this.f13647b);
                }
                if ((this.f13646a & 2) != 0) {
                    codedOutputStream.H0(2, this.f13648c);
                }
                if ((this.f13646a & 4) != 0) {
                    codedOutputStream.L0(3, j());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

                /* renamed from: a  reason: collision with root package name */
                private int f13651a;

                /* renamed from: b  reason: collision with root package name */
                private int f13652b;

                /* renamed from: c  reason: collision with root package name */
                private int f13653c;

                /* renamed from: d  reason: collision with root package name */
                private ExtensionRangeOptions f13654d;

                /* renamed from: e  reason: collision with root package name */
                private t1<ExtensionRangeOptions, ExtensionRangeOptions.b, Object> f13655e;

                private t1<ExtensionRangeOptions, ExtensionRangeOptions.b, Object> l() {
                    if (this.f13655e == null) {
                        this.f13655e = new t1<>(k(), getParentForChildren(), isClean());
                        this.f13654d = null;
                    }
                    return this.f13655e;
                }

                private void maybeForceBuilderInitialization() {
                    if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                        l();
                    }
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: a */
                public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: b */
                public ExtensionRange build() {
                    ExtensionRange buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: c */
                public ExtensionRange buildPartial() {
                    int i10;
                    ExtensionRange extensionRange = new ExtensionRange(this);
                    int i11 = this.f13651a;
                    if ((i11 & 1) != 0) {
                        extensionRange.f13647b = this.f13652b;
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    if ((i11 & 2) != 0) {
                        extensionRange.f13648c = this.f13653c;
                        i10 |= 2;
                    }
                    if ((i11 & 4) != 0) {
                        t1<ExtensionRangeOptions, ExtensionRangeOptions.b, Object> t1Var = this.f13655e;
                        if (t1Var == null) {
                            extensionRange.f13649d = this.f13654d;
                        } else {
                            extensionRange.f13649d = t1Var.a();
                        }
                        i10 |= 4;
                    }
                    extensionRange.f13646a = i10;
                    onBuilt();
                    return extensionRange;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: e */
                public b clear() {
                    super.clear();
                    this.f13652b = 0;
                    int i10 = this.f13651a;
                    this.f13653c = 0;
                    this.f13651a = i10 & (-4);
                    t1<ExtensionRangeOptions, ExtensionRangeOptions.b, Object> t1Var = this.f13655e;
                    if (t1Var == null) {
                        this.f13654d = null;
                    } else {
                        t1Var.b();
                    }
                    this.f13651a &= -5;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: f */
                public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (b) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: g */
                public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (b) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return DescriptorProtos.f13610g;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: i */
                public b mo4628clone() {
                    return (b) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return DescriptorProtos.f13611h.d(ExtensionRange.class, b.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    if (m() && !k().isInitialized()) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: j */
                public ExtensionRange mo4630getDefaultInstanceForType() {
                    return ExtensionRange.g();
                }

                public ExtensionRangeOptions k() {
                    t1<ExtensionRangeOptions, ExtensionRangeOptions.b, Object> t1Var = this.f13655e;
                    if (t1Var == null) {
                        ExtensionRangeOptions extensionRangeOptions = this.f13654d;
                        if (extensionRangeOptions == null) {
                            return ExtensionRangeOptions.k();
                        }
                        return extensionRangeOptions;
                    }
                    return t1Var.e();
                }

                public boolean m() {
                    if ((this.f13651a & 4) != 0) {
                        return true;
                    }
                    return false;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: n */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.DescriptorProtos.DescriptorProto.ExtensionRange.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange> r1 = com.explorestack.protobuf.DescriptorProtos.DescriptorProto.ExtensionRange.f13645g     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        com.explorestack.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange r3 = (com.explorestack.protobuf.DescriptorProtos.DescriptorProto.ExtensionRange) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        if (r3 == 0) goto Le
                        r2.o(r3)
                    Le:
                        return r2
                    Lf:
                        r3 = move-exception
                        goto L1f
                    L11:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                        com.explorestack.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange r4 = (com.explorestack.protobuf.DescriptorProtos.DescriptorProto.ExtensionRange) r4     // Catch: java.lang.Throwable -> Lf
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                        throw r3     // Catch: java.lang.Throwable -> L1d
                    L1d:
                        r3 = move-exception
                        r0 = r4
                    L1f:
                        if (r0 == 0) goto L24
                        r2.o(r0)
                    L24:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.DescriptorProto.ExtensionRange.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange$b");
                }

                public b o(ExtensionRange extensionRange) {
                    if (extensionRange == ExtensionRange.g()) {
                        return this;
                    }
                    if (extensionRange.r()) {
                        v(extensionRange.k());
                    }
                    if (extensionRange.n()) {
                        s(extensionRange.i());
                    }
                    if (extensionRange.q()) {
                        q(extensionRange.j());
                    }
                    mergeUnknownFields(extensionRange.unknownFields);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: p */
                public b mergeFrom(Message message) {
                    if (message instanceof ExtensionRange) {
                        return o((ExtensionRange) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public b q(ExtensionRangeOptions extensionRangeOptions) {
                    ExtensionRangeOptions extensionRangeOptions2;
                    t1<ExtensionRangeOptions, ExtensionRangeOptions.b, Object> t1Var = this.f13655e;
                    if (t1Var == null) {
                        if ((this.f13651a & 4) != 0 && (extensionRangeOptions2 = this.f13654d) != null && extensionRangeOptions2 != ExtensionRangeOptions.k()) {
                            this.f13654d = ExtensionRangeOptions.u(this.f13654d).A(extensionRangeOptions).buildPartial();
                        } else {
                            this.f13654d = extensionRangeOptions;
                        }
                        onChanged();
                    } else {
                        t1Var.g(extensionRangeOptions);
                    }
                    this.f13651a |= 4;
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: r */
                public final b mergeUnknownFields(j2 j2Var) {
                    return (b) super.mergeUnknownFields(j2Var);
                }

                public b s(int i10) {
                    this.f13651a |= 2;
                    this.f13653c = i10;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: t */
                public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.setField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: u */
                public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                public b v(int i10) {
                    this.f13651a |= 1;
                    this.f13652b = i10;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: w */
                public final b setUnknownFields(j2 j2Var) {
                    return (b) super.setUnknownFields(j2Var);
                }

                private b() {
                    maybeForceBuilderInitialization();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    maybeForceBuilderInitialization();
                }
            }

            private ExtensionRange(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.f13650e = (byte) -1;
            }

            private ExtensionRange() {
                this.f13650e = (byte) -1;
            }

            private ExtensionRange(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 8) {
                                    this.f13646a |= 1;
                                    this.f13647b = nVar.y();
                                } else if (K == 16) {
                                    this.f13646a |= 2;
                                    this.f13648c = nVar.y();
                                } else if (K != 26) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    ExtensionRangeOptions.b builder = (this.f13646a & 4) != 0 ? this.f13649d.toBuilder() : null;
                                    ExtensionRangeOptions extensionRangeOptions = (ExtensionRangeOptions) nVar.A(ExtensionRangeOptions.f13746e, yVar);
                                    this.f13649d = extensionRangeOptions;
                                    if (builder != null) {
                                        builder.A(extensionRangeOptions);
                                        this.f13649d = builder.buildPartial();
                                    }
                                    this.f13646a |= 4;
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }
        }

        /* loaded from: classes3.dex */
        public static final class ReservedRange extends GeneratedMessageV3 implements MessageOrBuilder {

            /* renamed from: e  reason: collision with root package name */
            private static final ReservedRange f13656e = new ReservedRange();
            @Deprecated

            /* renamed from: f  reason: collision with root package name */
            public static final j1<ReservedRange> f13657f = new a();

            /* renamed from: a  reason: collision with root package name */
            private int f13658a;

            /* renamed from: b  reason: collision with root package name */
            private int f13659b;

            /* renamed from: c  reason: collision with root package name */
            private int f13660c;

            /* renamed from: d  reason: collision with root package name */
            private byte f13661d;

            /* loaded from: classes3.dex */
            static class a extends com.explorestack.protobuf.b<ReservedRange> {
                a() {
                }

                @Override // com.explorestack.protobuf.j1
                /* renamed from: a */
                public ReservedRange parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new ReservedRange(nVar, yVar);
                }
            }

            public static ReservedRange f() {
                return f13656e;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.f13612i;
            }

            public static b n() {
                return f13656e.toBuilder();
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof ReservedRange)) {
                    return super.equals(obj);
                }
                ReservedRange reservedRange = (ReservedRange) obj;
                if (k() != reservedRange.k()) {
                    return false;
                }
                if ((k() && i() != reservedRange.i()) || j() != reservedRange.j()) {
                    return false;
                }
                if ((!j() || h() == reservedRange.h()) && this.unknownFields.equals(reservedRange.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: g */
            public ReservedRange mo4630getDefaultInstanceForType() {
                return f13656e;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<ReservedRange> getParserForType() {
                return f13657f;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if ((this.f13658a & 1) != 0) {
                    i10 = CodedOutputStream.x(1, this.f13659b);
                } else {
                    i10 = 0;
                }
                if ((this.f13658a & 2) != 0) {
                    i10 += CodedOutputStream.x(2, this.f13660c);
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            public int h() {
                return this.f13660c;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (k()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + i();
                }
                if (j()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + h();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            public int i() {
                return this.f13659b;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13613j.d(ReservedRange.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.f13661d;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.f13661d = (byte) 1;
                return true;
            }

            public boolean j() {
                if ((this.f13658a & 2) != 0) {
                    return true;
                }
                return false;
            }

            public boolean k() {
                if ((this.f13658a & 1) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new ReservedRange();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: q */
            public b newBuilderForType() {
                return n();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            /* renamed from: r */
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: s */
            public b toBuilder() {
                if (this == f13656e) {
                    return new b();
                }
                return new b().l(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.f13658a & 1) != 0) {
                    codedOutputStream.H0(1, this.f13659b);
                }
                if ((this.f13658a & 2) != 0) {
                    codedOutputStream.H0(2, this.f13660c);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

                /* renamed from: a  reason: collision with root package name */
                private int f13662a;

                /* renamed from: b  reason: collision with root package name */
                private int f13663b;

                /* renamed from: c  reason: collision with root package name */
                private int f13664c;

                private void maybeForceBuilderInitialization() {
                    boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: a */
                public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: b */
                public ReservedRange build() {
                    ReservedRange buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: c */
                public ReservedRange buildPartial() {
                    int i10;
                    ReservedRange reservedRange = new ReservedRange(this);
                    int i11 = this.f13662a;
                    if ((i11 & 1) != 0) {
                        reservedRange.f13659b = this.f13663b;
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    if ((i11 & 2) != 0) {
                        reservedRange.f13660c = this.f13664c;
                        i10 |= 2;
                    }
                    reservedRange.f13658a = i10;
                    onBuilt();
                    return reservedRange;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: e */
                public b clear() {
                    super.clear();
                    this.f13663b = 0;
                    int i10 = this.f13662a;
                    this.f13664c = 0;
                    this.f13662a = i10 & (-4);
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: f */
                public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (b) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: g */
                public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (b) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return DescriptorProtos.f13612i;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: i */
                public b mo4628clone() {
                    return (b) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return DescriptorProtos.f13613j.d(ReservedRange.class, b.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: j */
                public ReservedRange mo4630getDefaultInstanceForType() {
                    return ReservedRange.f();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: k */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.DescriptorProtos.DescriptorProto.ReservedRange.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$DescriptorProto$ReservedRange> r1 = com.explorestack.protobuf.DescriptorProtos.DescriptorProto.ReservedRange.f13657f     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        com.explorestack.protobuf.DescriptorProtos$DescriptorProto$ReservedRange r3 = (com.explorestack.protobuf.DescriptorProtos.DescriptorProto.ReservedRange) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        if (r3 == 0) goto Le
                        r2.l(r3)
                    Le:
                        return r2
                    Lf:
                        r3 = move-exception
                        goto L1f
                    L11:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                        com.explorestack.protobuf.DescriptorProtos$DescriptorProto$ReservedRange r4 = (com.explorestack.protobuf.DescriptorProtos.DescriptorProto.ReservedRange) r4     // Catch: java.lang.Throwable -> Lf
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                        throw r3     // Catch: java.lang.Throwable -> L1d
                    L1d:
                        r3 = move-exception
                        r0 = r4
                    L1f:
                        if (r0 == 0) goto L24
                        r2.l(r0)
                    L24:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.DescriptorProto.ReservedRange.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$DescriptorProto$ReservedRange$b");
                }

                public b l(ReservedRange reservedRange) {
                    if (reservedRange == ReservedRange.f()) {
                        return this;
                    }
                    if (reservedRange.k()) {
                        r(reservedRange.i());
                    }
                    if (reservedRange.j()) {
                        o(reservedRange.h());
                    }
                    mergeUnknownFields(reservedRange.unknownFields);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: m */
                public b mergeFrom(Message message) {
                    if (message instanceof ReservedRange) {
                        return l((ReservedRange) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: n */
                public final b mergeUnknownFields(j2 j2Var) {
                    return (b) super.mergeUnknownFields(j2Var);
                }

                public b o(int i10) {
                    this.f13662a |= 2;
                    this.f13664c = i10;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: p */
                public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.setField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: q */
                public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                public b r(int i10) {
                    this.f13662a |= 1;
                    this.f13663b = i10;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: s */
                public final b setUnknownFields(j2 j2Var) {
                    return (b) super.setUnknownFields(j2Var);
                }

                private b() {
                    maybeForceBuilderInitialization();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    maybeForceBuilderInitialization();
                }
            }

            private ReservedRange(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.f13661d = (byte) -1;
            }

            private ReservedRange() {
                this.f13661d = (byte) -1;
            }

            private ReservedRange(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 8) {
                                    this.f13658a |= 1;
                                    this.f13659b = nVar.y();
                                } else if (K != 16) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    this.f13658a |= 2;
                                    this.f13660c = nVar.y();
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }
        }

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<DescriptorProto> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public DescriptorProto parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new DescriptorProto(nVar, yVar);
            }
        }

        public static DescriptorProto C() {
            return f13630m;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.f13608e;
        }

        public static b p0() {
            return f13630m.toBuilder();
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: D */
        public DescriptorProto mo4630getDefaultInstanceForType() {
            return f13630m;
        }

        public EnumDescriptorProto E(int i10) {
            return this.f13637f.get(i10);
        }

        public int F() {
            return this.f13637f.size();
        }

        public List<EnumDescriptorProto> G() {
            return this.f13637f;
        }

        public FieldDescriptorProto H(int i10) {
            return this.f13635d.get(i10);
        }

        public int I() {
            return this.f13635d.size();
        }

        public List<FieldDescriptorProto> J() {
            return this.f13635d;
        }

        public ExtensionRange K(int i10) {
            return this.f13638g.get(i10);
        }

        public int L() {
            return this.f13638g.size();
        }

        public List<ExtensionRange> M() {
            return this.f13638g;
        }

        public FieldDescriptorProto N(int i10) {
            return this.f13634c.get(i10);
        }

        public int O() {
            return this.f13634c.size();
        }

        public List<FieldDescriptorProto> P() {
            return this.f13634c;
        }

        public DescriptorProto Q(int i10) {
            return this.f13636e.get(i10);
        }

        public int S() {
            return this.f13636e.size();
        }

        public List<DescriptorProto> U() {
            return this.f13636e;
        }

        public OneofDescriptorProto V(int i10) {
            return this.f13639h.get(i10);
        }

        public int W() {
            return this.f13639h.size();
        }

        public List<OneofDescriptorProto> X() {
            return this.f13639h;
        }

        public MessageOptions Y() {
            MessageOptions messageOptions = this.f13640i;
            if (messageOptions == null) {
                return MessageOptions.t();
            }
            return messageOptions;
        }

        public int Z() {
            return this.f13642k.size();
        }

        public m1 a0() {
            return this.f13642k;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DescriptorProto)) {
                return super.equals(obj);
            }
            DescriptorProto descriptorProto = (DescriptorProto) obj;
            if (hasName() != descriptorProto.hasName()) {
                return false;
            }
            if ((hasName() && !getName().equals(descriptorProto.getName())) || !P().equals(descriptorProto.P()) || !J().equals(descriptorProto.J()) || !U().equals(descriptorProto.U()) || !G().equals(descriptorProto.G()) || !M().equals(descriptorProto.M()) || !X().equals(descriptorProto.X()) || o0() != descriptorProto.o0()) {
                return false;
            }
            if ((!o0() || Y().equals(descriptorProto.Y())) && l0().equals(descriptorProto.l0()) && a0().equals(descriptorProto.a0()) && this.unknownFields.equals(descriptorProto.unknownFields)) {
                return true;
            }
            return false;
        }

        public String getName() {
            Object obj = this.f13633b;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13633b = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<DescriptorProto> getParserForType() {
            return f13631n;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13632a & 1) != 0) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.f13633b);
            } else {
                i10 = 0;
            }
            for (int i12 = 0; i12 < this.f13634c.size(); i12++) {
                i10 += CodedOutputStream.G(2, this.f13634c.get(i12));
            }
            for (int i13 = 0; i13 < this.f13636e.size(); i13++) {
                i10 += CodedOutputStream.G(3, this.f13636e.get(i13));
            }
            for (int i14 = 0; i14 < this.f13637f.size(); i14++) {
                i10 += CodedOutputStream.G(4, this.f13637f.get(i14));
            }
            for (int i15 = 0; i15 < this.f13638g.size(); i15++) {
                i10 += CodedOutputStream.G(5, this.f13638g.get(i15));
            }
            for (int i16 = 0; i16 < this.f13635d.size(); i16++) {
                i10 += CodedOutputStream.G(6, this.f13635d.get(i16));
            }
            if ((this.f13632a & 2) != 0) {
                i10 += CodedOutputStream.G(7, Y());
            }
            for (int i17 = 0; i17 < this.f13639h.size(); i17++) {
                i10 += CodedOutputStream.G(8, this.f13639h.get(i17));
            }
            for (int i18 = 0; i18 < this.f13641j.size(); i18++) {
                i10 += CodedOutputStream.G(9, this.f13641j.get(i18));
            }
            int i19 = 0;
            for (int i20 = 0; i20 < this.f13642k.size(); i20++) {
                i19 += GeneratedMessageV3.computeStringSizeNoTag(this.f13642k.getRaw(i20));
            }
            int size = i10 + i19 + a0().size() + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasName() {
            if ((this.f13632a & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasName()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
            }
            if (O() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + P().hashCode();
            }
            if (I() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + J().hashCode();
            }
            if (S() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + U().hashCode();
            }
            if (F() > 0) {
                hashCode = (((hashCode * 37) + 4) * 53) + G().hashCode();
            }
            if (L() > 0) {
                hashCode = (((hashCode * 37) + 5) * 53) + M().hashCode();
            }
            if (W() > 0) {
                hashCode = (((hashCode * 37) + 8) * 53) + X().hashCode();
            }
            if (o0()) {
                hashCode = (((hashCode * 37) + 7) * 53) + Y().hashCode();
            }
            if (k0() > 0) {
                hashCode = (((hashCode * 37) + 9) * 53) + l0().hashCode();
            }
            if (Z() > 0) {
                hashCode = (((hashCode * 37) + 10) * 53) + a0().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.f13609f.d(DescriptorProto.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13643l;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < O(); i10++) {
                if (!N(i10).isInitialized()) {
                    this.f13643l = (byte) 0;
                    return false;
                }
            }
            for (int i11 = 0; i11 < I(); i11++) {
                if (!H(i11).isInitialized()) {
                    this.f13643l = (byte) 0;
                    return false;
                }
            }
            for (int i12 = 0; i12 < S(); i12++) {
                if (!Q(i12).isInitialized()) {
                    this.f13643l = (byte) 0;
                    return false;
                }
            }
            for (int i13 = 0; i13 < F(); i13++) {
                if (!E(i13).isInitialized()) {
                    this.f13643l = (byte) 0;
                    return false;
                }
            }
            for (int i14 = 0; i14 < L(); i14++) {
                if (!K(i14).isInitialized()) {
                    this.f13643l = (byte) 0;
                    return false;
                }
            }
            for (int i15 = 0; i15 < W(); i15++) {
                if (!V(i15).isInitialized()) {
                    this.f13643l = (byte) 0;
                    return false;
                }
            }
            if (o0() && !Y().isInitialized()) {
                this.f13643l = (byte) 0;
                return false;
            }
            this.f13643l = (byte) 1;
            return true;
        }

        public int k0() {
            return this.f13641j.size();
        }

        public List<ReservedRange> l0() {
            return this.f13641j;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new DescriptorProto();
        }

        public boolean o0() {
            if ((this.f13632a & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: q0 */
        public b newBuilderForType() {
            return p0();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: r0 */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: s0 */
        public b toBuilder() {
            if (this == f13630m) {
                return new b();
            }
            return new b().P(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.f13632a & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.f13633b);
            }
            for (int i10 = 0; i10 < this.f13634c.size(); i10++) {
                codedOutputStream.L0(2, this.f13634c.get(i10));
            }
            for (int i11 = 0; i11 < this.f13636e.size(); i11++) {
                codedOutputStream.L0(3, this.f13636e.get(i11));
            }
            for (int i12 = 0; i12 < this.f13637f.size(); i12++) {
                codedOutputStream.L0(4, this.f13637f.get(i12));
            }
            for (int i13 = 0; i13 < this.f13638g.size(); i13++) {
                codedOutputStream.L0(5, this.f13638g.get(i13));
            }
            for (int i14 = 0; i14 < this.f13635d.size(); i14++) {
                codedOutputStream.L0(6, this.f13635d.get(i14));
            }
            if ((this.f13632a & 2) != 0) {
                codedOutputStream.L0(7, Y());
            }
            for (int i15 = 0; i15 < this.f13639h.size(); i15++) {
                codedOutputStream.L0(8, this.f13639h.get(i15));
            }
            for (int i16 = 0; i16 < this.f13641j.size(); i16++) {
                codedOutputStream.L0(9, this.f13641j.get(i16));
            }
            for (int i17 = 0; i17 < this.f13642k.size(); i17++) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.f13642k.getRaw(i17));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f13665a;

            /* renamed from: b  reason: collision with root package name */
            private Object f13666b;

            /* renamed from: c  reason: collision with root package name */
            private List<FieldDescriptorProto> f13667c;

            /* renamed from: d  reason: collision with root package name */
            private p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> f13668d;

            /* renamed from: e  reason: collision with root package name */
            private List<FieldDescriptorProto> f13669e;

            /* renamed from: f  reason: collision with root package name */
            private p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> f13670f;

            /* renamed from: g  reason: collision with root package name */
            private List<DescriptorProto> f13671g;

            /* renamed from: h  reason: collision with root package name */
            private p1<DescriptorProto, b, Object> f13672h;

            /* renamed from: i  reason: collision with root package name */
            private List<EnumDescriptorProto> f13673i;

            /* renamed from: j  reason: collision with root package name */
            private p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> f13674j;

            /* renamed from: k  reason: collision with root package name */
            private List<ExtensionRange> f13675k;

            /* renamed from: l  reason: collision with root package name */
            private p1<ExtensionRange, ExtensionRange.b, Object> f13676l;

            /* renamed from: m  reason: collision with root package name */
            private List<OneofDescriptorProto> f13677m;

            /* renamed from: n  reason: collision with root package name */
            private p1<OneofDescriptorProto, OneofDescriptorProto.b, Object> f13678n;

            /* renamed from: o  reason: collision with root package name */
            private MessageOptions f13679o;

            /* renamed from: p  reason: collision with root package name */
            private t1<MessageOptions, MessageOptions.b, Object> f13680p;

            /* renamed from: q  reason: collision with root package name */
            private List<ReservedRange> f13681q;

            /* renamed from: r  reason: collision with root package name */
            private p1<ReservedRange, ReservedRange.b, Object> f13682r;

            /* renamed from: s  reason: collision with root package name */
            private n0 f13683s;

            private p1<ExtensionRange, ExtensionRange.b, Object> A() {
                boolean z10;
                if (this.f13676l == null) {
                    List<ExtensionRange> list = this.f13675k;
                    if ((this.f13665a & 32) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13676l = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13675k = null;
                }
                return this.f13676l;
            }

            private p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> D() {
                boolean z10;
                if (this.f13668d == null) {
                    List<FieldDescriptorProto> list = this.f13667c;
                    if ((this.f13665a & 2) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13668d = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13667c = null;
                }
                return this.f13668d;
            }

            private p1<DescriptorProto, b, Object> G() {
                boolean z10;
                if (this.f13672h == null) {
                    List<DescriptorProto> list = this.f13671g;
                    if ((this.f13665a & 8) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13672h = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13671g = null;
                }
                return this.f13672h;
            }

            private p1<OneofDescriptorProto, OneofDescriptorProto.b, Object> J() {
                boolean z10;
                if (this.f13678n == null) {
                    List<OneofDescriptorProto> list = this.f13677m;
                    if ((this.f13665a & 64) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13678n = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13677m = null;
                }
                return this.f13678n;
            }

            private t1<MessageOptions, MessageOptions.b, Object> L() {
                if (this.f13680p == null) {
                    this.f13680p = new t1<>(K(), getParentForChildren(), isClean());
                    this.f13679o = null;
                }
                return this.f13680p;
            }

            private p1<ReservedRange, ReservedRange.b, Object> M() {
                boolean z10;
                if (this.f13682r == null) {
                    List<ReservedRange> list = this.f13681q;
                    if ((this.f13665a & 256) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13682r = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13681q = null;
                }
                return this.f13682r;
            }

            private void j() {
                if ((this.f13665a & 16) == 0) {
                    this.f13673i = new ArrayList(this.f13673i);
                    this.f13665a |= 16;
                }
            }

            private void k() {
                if ((this.f13665a & 4) == 0) {
                    this.f13669e = new ArrayList(this.f13669e);
                    this.f13665a |= 4;
                }
            }

            private void l() {
                if ((this.f13665a & 32) == 0) {
                    this.f13675k = new ArrayList(this.f13675k);
                    this.f13665a |= 32;
                }
            }

            private void m() {
                if ((this.f13665a & 2) == 0) {
                    this.f13667c = new ArrayList(this.f13667c);
                    this.f13665a |= 2;
                }
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    D();
                    x();
                    G();
                    u();
                    A();
                    J();
                    L();
                    M();
                }
            }

            private void n() {
                if ((this.f13665a & 8) == 0) {
                    this.f13671g = new ArrayList(this.f13671g);
                    this.f13665a |= 8;
                }
            }

            private void o() {
                if ((this.f13665a & 64) == 0) {
                    this.f13677m = new ArrayList(this.f13677m);
                    this.f13665a |= 64;
                }
            }

            private void p() {
                if ((this.f13665a & 512) == 0) {
                    this.f13683s = new m0(this.f13683s);
                    this.f13665a |= 512;
                }
            }

            private void q() {
                if ((this.f13665a & 256) == 0) {
                    this.f13681q = new ArrayList(this.f13681q);
                    this.f13665a |= 256;
                }
            }

            private p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> u() {
                boolean z10;
                if (this.f13674j == null) {
                    List<EnumDescriptorProto> list = this.f13673i;
                    if ((this.f13665a & 16) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13674j = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13673i = null;
                }
                return this.f13674j;
            }

            private p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> x() {
                boolean z10;
                if (this.f13670f == null) {
                    List<FieldDescriptorProto> list = this.f13669e;
                    if ((this.f13665a & 4) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13670f = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13669e = null;
                }
                return this.f13670f;
            }

            public FieldDescriptorProto B(int i10) {
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var = this.f13668d;
                if (p1Var == null) {
                    return this.f13667c.get(i10);
                }
                return p1Var.n(i10);
            }

            public int C() {
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var = this.f13668d;
                if (p1Var == null) {
                    return this.f13667c.size();
                }
                return p1Var.m();
            }

            public DescriptorProto E(int i10) {
                p1<DescriptorProto, b, Object> p1Var = this.f13672h;
                if (p1Var == null) {
                    return this.f13671g.get(i10);
                }
                return p1Var.n(i10);
            }

            public int F() {
                p1<DescriptorProto, b, Object> p1Var = this.f13672h;
                if (p1Var == null) {
                    return this.f13671g.size();
                }
                return p1Var.m();
            }

            public OneofDescriptorProto H(int i10) {
                p1<OneofDescriptorProto, OneofDescriptorProto.b, Object> p1Var = this.f13678n;
                if (p1Var == null) {
                    return this.f13677m.get(i10);
                }
                return p1Var.n(i10);
            }

            public int I() {
                p1<OneofDescriptorProto, OneofDescriptorProto.b, Object> p1Var = this.f13678n;
                if (p1Var == null) {
                    return this.f13677m.size();
                }
                return p1Var.m();
            }

            public MessageOptions K() {
                t1<MessageOptions, MessageOptions.b, Object> t1Var = this.f13680p;
                if (t1Var == null) {
                    MessageOptions messageOptions = this.f13679o;
                    if (messageOptions == null) {
                        return MessageOptions.t();
                    }
                    return messageOptions;
                }
                return t1Var.e();
            }

            public boolean N() {
                if ((this.f13665a & 128) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: O */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.DescriptorProto.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$DescriptorProto> r1 = com.explorestack.protobuf.DescriptorProtos.DescriptorProto.f13631n     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$DescriptorProto r3 = (com.explorestack.protobuf.DescriptorProtos.DescriptorProto) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.P(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$DescriptorProto r4 = (com.explorestack.protobuf.DescriptorProtos.DescriptorProto) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.P(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.DescriptorProto.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$DescriptorProto$b");
            }

            public b P(DescriptorProto descriptorProto) {
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var;
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var2;
                p1<DescriptorProto, b, Object> p1Var3;
                p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> p1Var4;
                p1<ExtensionRange, ExtensionRange.b, Object> p1Var5;
                p1<OneofDescriptorProto, OneofDescriptorProto.b, Object> p1Var6;
                if (descriptorProto == DescriptorProto.C()) {
                    return this;
                }
                if (descriptorProto.hasName()) {
                    this.f13665a |= 1;
                    this.f13666b = descriptorProto.f13633b;
                    onChanged();
                }
                p1<ReservedRange, ReservedRange.b, Object> p1Var7 = null;
                if (this.f13668d == null) {
                    if (!descriptorProto.f13634c.isEmpty()) {
                        if (this.f13667c.isEmpty()) {
                            this.f13667c = descriptorProto.f13634c;
                            this.f13665a &= -3;
                        } else {
                            m();
                            this.f13667c.addAll(descriptorProto.f13634c);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.f13634c.isEmpty()) {
                    if (this.f13668d.t()) {
                        this.f13668d.h();
                        this.f13668d = null;
                        this.f13667c = descriptorProto.f13634c;
                        this.f13665a &= -3;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = D();
                        } else {
                            p1Var = null;
                        }
                        this.f13668d = p1Var;
                    } else {
                        this.f13668d.a(descriptorProto.f13634c);
                    }
                }
                if (this.f13670f == null) {
                    if (!descriptorProto.f13635d.isEmpty()) {
                        if (this.f13669e.isEmpty()) {
                            this.f13669e = descriptorProto.f13635d;
                            this.f13665a &= -5;
                        } else {
                            k();
                            this.f13669e.addAll(descriptorProto.f13635d);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.f13635d.isEmpty()) {
                    if (this.f13670f.t()) {
                        this.f13670f.h();
                        this.f13670f = null;
                        this.f13669e = descriptorProto.f13635d;
                        this.f13665a &= -5;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var2 = x();
                        } else {
                            p1Var2 = null;
                        }
                        this.f13670f = p1Var2;
                    } else {
                        this.f13670f.a(descriptorProto.f13635d);
                    }
                }
                if (this.f13672h == null) {
                    if (!descriptorProto.f13636e.isEmpty()) {
                        if (this.f13671g.isEmpty()) {
                            this.f13671g = descriptorProto.f13636e;
                            this.f13665a &= -9;
                        } else {
                            n();
                            this.f13671g.addAll(descriptorProto.f13636e);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.f13636e.isEmpty()) {
                    if (this.f13672h.t()) {
                        this.f13672h.h();
                        this.f13672h = null;
                        this.f13671g = descriptorProto.f13636e;
                        this.f13665a &= -9;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var3 = G();
                        } else {
                            p1Var3 = null;
                        }
                        this.f13672h = p1Var3;
                    } else {
                        this.f13672h.a(descriptorProto.f13636e);
                    }
                }
                if (this.f13674j == null) {
                    if (!descriptorProto.f13637f.isEmpty()) {
                        if (this.f13673i.isEmpty()) {
                            this.f13673i = descriptorProto.f13637f;
                            this.f13665a &= -17;
                        } else {
                            j();
                            this.f13673i.addAll(descriptorProto.f13637f);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.f13637f.isEmpty()) {
                    if (this.f13674j.t()) {
                        this.f13674j.h();
                        this.f13674j = null;
                        this.f13673i = descriptorProto.f13637f;
                        this.f13665a &= -17;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var4 = u();
                        } else {
                            p1Var4 = null;
                        }
                        this.f13674j = p1Var4;
                    } else {
                        this.f13674j.a(descriptorProto.f13637f);
                    }
                }
                if (this.f13676l == null) {
                    if (!descriptorProto.f13638g.isEmpty()) {
                        if (this.f13675k.isEmpty()) {
                            this.f13675k = descriptorProto.f13638g;
                            this.f13665a &= -33;
                        } else {
                            l();
                            this.f13675k.addAll(descriptorProto.f13638g);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.f13638g.isEmpty()) {
                    if (this.f13676l.t()) {
                        this.f13676l.h();
                        this.f13676l = null;
                        this.f13675k = descriptorProto.f13638g;
                        this.f13665a &= -33;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var5 = A();
                        } else {
                            p1Var5 = null;
                        }
                        this.f13676l = p1Var5;
                    } else {
                        this.f13676l.a(descriptorProto.f13638g);
                    }
                }
                if (this.f13678n == null) {
                    if (!descriptorProto.f13639h.isEmpty()) {
                        if (this.f13677m.isEmpty()) {
                            this.f13677m = descriptorProto.f13639h;
                            this.f13665a &= -65;
                        } else {
                            o();
                            this.f13677m.addAll(descriptorProto.f13639h);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.f13639h.isEmpty()) {
                    if (this.f13678n.t()) {
                        this.f13678n.h();
                        this.f13678n = null;
                        this.f13677m = descriptorProto.f13639h;
                        this.f13665a &= -65;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var6 = J();
                        } else {
                            p1Var6 = null;
                        }
                        this.f13678n = p1Var6;
                    } else {
                        this.f13678n.a(descriptorProto.f13639h);
                    }
                }
                if (descriptorProto.o0()) {
                    R(descriptorProto.Y());
                }
                if (this.f13682r == null) {
                    if (!descriptorProto.f13641j.isEmpty()) {
                        if (this.f13681q.isEmpty()) {
                            this.f13681q = descriptorProto.f13641j;
                            this.f13665a &= -257;
                        } else {
                            q();
                            this.f13681q.addAll(descriptorProto.f13641j);
                        }
                        onChanged();
                    }
                } else if (!descriptorProto.f13641j.isEmpty()) {
                    if (this.f13682r.t()) {
                        this.f13682r.h();
                        this.f13682r = null;
                        this.f13681q = descriptorProto.f13641j;
                        this.f13665a &= -257;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var7 = M();
                        }
                        this.f13682r = p1Var7;
                    } else {
                        this.f13682r.a(descriptorProto.f13641j);
                    }
                }
                if (!descriptorProto.f13642k.isEmpty()) {
                    if (this.f13683s.isEmpty()) {
                        this.f13683s = descriptorProto.f13642k;
                        this.f13665a &= -513;
                    } else {
                        p();
                        this.f13683s.addAll(descriptorProto.f13642k);
                    }
                    onChanged();
                }
                mergeUnknownFields(descriptorProto.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: Q */
            public b mergeFrom(Message message) {
                if (message instanceof DescriptorProto) {
                    return P((DescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public b R(MessageOptions messageOptions) {
                MessageOptions messageOptions2;
                t1<MessageOptions, MessageOptions.b, Object> t1Var = this.f13680p;
                if (t1Var == null) {
                    if ((this.f13665a & 128) != 0 && (messageOptions2 = this.f13679o) != null && messageOptions2 != MessageOptions.t()) {
                        this.f13679o = MessageOptions.J(this.f13679o).A(messageOptions).buildPartial();
                    } else {
                        this.f13679o = messageOptions;
                    }
                    onChanged();
                } else {
                    t1Var.g(messageOptions);
                }
                this.f13665a |= 128;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: S */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: T */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            public b U(String str) {
                str.getClass();
                this.f13665a |= 1;
                this.f13666b = str;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: V */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: W */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            public b a(ExtensionRange extensionRange) {
                p1<ExtensionRange, ExtensionRange.b, Object> p1Var = this.f13676l;
                if (p1Var == null) {
                    extensionRange.getClass();
                    l();
                    this.f13675k.add(extensionRange);
                    onChanged();
                } else {
                    p1Var.e(extensionRange);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public DescriptorProto build() {
                DescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public DescriptorProto buildPartial() {
                int i10;
                DescriptorProto descriptorProto = new DescriptorProto(this);
                int i11 = this.f13665a;
                if ((i11 & 1) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                descriptorProto.f13633b = this.f13666b;
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var = this.f13668d;
                if (p1Var != null) {
                    descriptorProto.f13634c = p1Var.f();
                } else {
                    if ((this.f13665a & 2) != 0) {
                        this.f13667c = Collections.unmodifiableList(this.f13667c);
                        this.f13665a &= -3;
                    }
                    descriptorProto.f13634c = this.f13667c;
                }
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var2 = this.f13670f;
                if (p1Var2 != null) {
                    descriptorProto.f13635d = p1Var2.f();
                } else {
                    if ((this.f13665a & 4) != 0) {
                        this.f13669e = Collections.unmodifiableList(this.f13669e);
                        this.f13665a &= -5;
                    }
                    descriptorProto.f13635d = this.f13669e;
                }
                p1<DescriptorProto, b, Object> p1Var3 = this.f13672h;
                if (p1Var3 != null) {
                    descriptorProto.f13636e = p1Var3.f();
                } else {
                    if ((this.f13665a & 8) != 0) {
                        this.f13671g = Collections.unmodifiableList(this.f13671g);
                        this.f13665a &= -9;
                    }
                    descriptorProto.f13636e = this.f13671g;
                }
                p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> p1Var4 = this.f13674j;
                if (p1Var4 != null) {
                    descriptorProto.f13637f = p1Var4.f();
                } else {
                    if ((this.f13665a & 16) != 0) {
                        this.f13673i = Collections.unmodifiableList(this.f13673i);
                        this.f13665a &= -17;
                    }
                    descriptorProto.f13637f = this.f13673i;
                }
                p1<ExtensionRange, ExtensionRange.b, Object> p1Var5 = this.f13676l;
                if (p1Var5 != null) {
                    descriptorProto.f13638g = p1Var5.f();
                } else {
                    if ((this.f13665a & 32) != 0) {
                        this.f13675k = Collections.unmodifiableList(this.f13675k);
                        this.f13665a &= -33;
                    }
                    descriptorProto.f13638g = this.f13675k;
                }
                p1<OneofDescriptorProto, OneofDescriptorProto.b, Object> p1Var6 = this.f13678n;
                if (p1Var6 != null) {
                    descriptorProto.f13639h = p1Var6.f();
                } else {
                    if ((this.f13665a & 64) != 0) {
                        this.f13677m = Collections.unmodifiableList(this.f13677m);
                        this.f13665a &= -65;
                    }
                    descriptorProto.f13639h = this.f13677m;
                }
                if ((i11 & 128) != 0) {
                    t1<MessageOptions, MessageOptions.b, Object> t1Var = this.f13680p;
                    if (t1Var == null) {
                        descriptorProto.f13640i = this.f13679o;
                    } else {
                        descriptorProto.f13640i = t1Var.a();
                    }
                    i10 |= 2;
                }
                p1<ReservedRange, ReservedRange.b, Object> p1Var7 = this.f13682r;
                if (p1Var7 != null) {
                    descriptorProto.f13641j = p1Var7.f();
                } else {
                    if ((this.f13665a & 256) != 0) {
                        this.f13681q = Collections.unmodifiableList(this.f13681q);
                        this.f13665a &= -257;
                    }
                    descriptorProto.f13641j = this.f13681q;
                }
                if ((this.f13665a & 512) != 0) {
                    this.f13683s = this.f13683s.getUnmodifiableView();
                    this.f13665a &= -513;
                }
                descriptorProto.f13642k = this.f13683s;
                descriptorProto.f13632a = i10;
                onBuilt();
                return descriptorProto;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clear() {
                super.clear();
                this.f13666b = "";
                this.f13665a &= -2;
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var = this.f13668d;
                if (p1Var == null) {
                    this.f13667c = Collections.emptyList();
                    this.f13665a &= -3;
                } else {
                    p1Var.g();
                }
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var2 = this.f13670f;
                if (p1Var2 == null) {
                    this.f13669e = Collections.emptyList();
                    this.f13665a &= -5;
                } else {
                    p1Var2.g();
                }
                p1<DescriptorProto, b, Object> p1Var3 = this.f13672h;
                if (p1Var3 == null) {
                    this.f13671g = Collections.emptyList();
                    this.f13665a &= -9;
                } else {
                    p1Var3.g();
                }
                p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> p1Var4 = this.f13674j;
                if (p1Var4 == null) {
                    this.f13673i = Collections.emptyList();
                    this.f13665a &= -17;
                } else {
                    p1Var4.g();
                }
                p1<ExtensionRange, ExtensionRange.b, Object> p1Var5 = this.f13676l;
                if (p1Var5 == null) {
                    this.f13675k = Collections.emptyList();
                    this.f13665a &= -33;
                } else {
                    p1Var5.g();
                }
                p1<OneofDescriptorProto, OneofDescriptorProto.b, Object> p1Var6 = this.f13678n;
                if (p1Var6 == null) {
                    this.f13677m = Collections.emptyList();
                    this.f13665a &= -65;
                } else {
                    p1Var6.g();
                }
                t1<MessageOptions, MessageOptions.b, Object> t1Var = this.f13680p;
                if (t1Var == null) {
                    this.f13679o = null;
                } else {
                    t1Var.b();
                }
                this.f13665a &= -129;
                p1<ReservedRange, ReservedRange.b, Object> p1Var7 = this.f13682r;
                if (p1Var7 == null) {
                    this.f13681q = Collections.emptyList();
                    this.f13665a &= -257;
                } else {
                    p1Var7.g();
                }
                this.f13683s = m0.f14459d;
                this.f13665a &= -513;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.f13608e;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: h */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13609f.d(DescriptorProto.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < C(); i10++) {
                    if (!B(i10).isInitialized()) {
                        return false;
                    }
                }
                for (int i11 = 0; i11 < w(); i11++) {
                    if (!v(i11).isInitialized()) {
                        return false;
                    }
                }
                for (int i12 = 0; i12 < F(); i12++) {
                    if (!E(i12).isInitialized()) {
                        return false;
                    }
                }
                for (int i13 = 0; i13 < t(); i13++) {
                    if (!s(i13).isInitialized()) {
                        return false;
                    }
                }
                for (int i14 = 0; i14 < z(); i14++) {
                    if (!y(i14).isInitialized()) {
                        return false;
                    }
                }
                for (int i15 = 0; i15 < I(); i15++) {
                    if (!H(i15).isInitialized()) {
                        return false;
                    }
                }
                if (N() && !K().isInitialized()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: r */
            public DescriptorProto mo4630getDefaultInstanceForType() {
                return DescriptorProto.C();
            }

            public EnumDescriptorProto s(int i10) {
                p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> p1Var = this.f13674j;
                if (p1Var == null) {
                    return this.f13673i.get(i10);
                }
                return p1Var.n(i10);
            }

            public int t() {
                p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> p1Var = this.f13674j;
                if (p1Var == null) {
                    return this.f13673i.size();
                }
                return p1Var.m();
            }

            public FieldDescriptorProto v(int i10) {
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var = this.f13670f;
                if (p1Var == null) {
                    return this.f13669e.get(i10);
                }
                return p1Var.n(i10);
            }

            public int w() {
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var = this.f13670f;
                if (p1Var == null) {
                    return this.f13669e.size();
                }
                return p1Var.m();
            }

            public ExtensionRange y(int i10) {
                p1<ExtensionRange, ExtensionRange.b, Object> p1Var = this.f13676l;
                if (p1Var == null) {
                    return this.f13675k.get(i10);
                }
                return p1Var.n(i10);
            }

            public int z() {
                p1<ExtensionRange, ExtensionRange.b, Object> p1Var = this.f13676l;
                if (p1Var == null) {
                    return this.f13675k.size();
                }
                return p1Var.m();
            }

            private b() {
                this.f13666b = "";
                this.f13667c = Collections.emptyList();
                this.f13669e = Collections.emptyList();
                this.f13671g = Collections.emptyList();
                this.f13673i = Collections.emptyList();
                this.f13675k = Collections.emptyList();
                this.f13677m = Collections.emptyList();
                this.f13681q = Collections.emptyList();
                this.f13683s = m0.f14459d;
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13666b = "";
                this.f13667c = Collections.emptyList();
                this.f13669e = Collections.emptyList();
                this.f13671g = Collections.emptyList();
                this.f13673i = Collections.emptyList();
                this.f13675k = Collections.emptyList();
                this.f13677m = Collections.emptyList();
                this.f13681q = Collections.emptyList();
                this.f13683s = m0.f14459d;
                maybeForceBuilderInitialization();
            }
        }

        private DescriptorProto(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f13643l = (byte) -1;
        }

        private DescriptorProto() {
            this.f13643l = (byte) -1;
            this.f13633b = "";
            this.f13634c = Collections.emptyList();
            this.f13635d = Collections.emptyList();
            this.f13636e = Collections.emptyList();
            this.f13637f = Collections.emptyList();
            this.f13638g = Collections.emptyList();
            this.f13639h = Collections.emptyList();
            this.f13641j = Collections.emptyList();
            this.f13642k = m0.f14459d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private DescriptorProto(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        switch (K) {
                            case 0:
                                break;
                            case 10:
                                ByteString r10 = nVar.r();
                                this.f13632a = 1 | this.f13632a;
                                this.f13633b = r10;
                                continue;
                            case 18:
                                if (!(z11 & true)) {
                                    this.f13634c = new ArrayList();
                                    z11 |= true;
                                }
                                this.f13634c.add(nVar.A(FieldDescriptorProto.f13753o, yVar));
                                continue;
                            case 26:
                                if (!(z11 & true)) {
                                    this.f13636e = new ArrayList();
                                    z11 |= true;
                                }
                                this.f13636e.add(nVar.A(f13631n, yVar));
                                continue;
                            case 34:
                                if (!(z11 & true)) {
                                    this.f13637f = new ArrayList();
                                    z11 |= true;
                                }
                                this.f13637f.add(nVar.A(EnumDescriptorProto.f13685i, yVar));
                                continue;
                            case 42:
                                if (!(z11 & true)) {
                                    this.f13638g = new ArrayList();
                                    z11 |= true;
                                }
                                this.f13638g.add(nVar.A(ExtensionRange.f13645g, yVar));
                                continue;
                            case 50:
                                if (!(z11 & true)) {
                                    this.f13635d = new ArrayList();
                                    z11 |= true;
                                }
                                this.f13635d.add(nVar.A(FieldDescriptorProto.f13753o, yVar));
                                continue;
                            case 58:
                                MessageOptions.b builder = (this.f13632a & 2) != 0 ? this.f13640i.toBuilder() : null;
                                MessageOptions messageOptions = (MessageOptions) nVar.A(MessageOptions.f13905j, yVar);
                                this.f13640i = messageOptions;
                                if (builder != null) {
                                    builder.A(messageOptions);
                                    this.f13640i = builder.buildPartial();
                                }
                                this.f13632a |= 2;
                                continue;
                            case 66:
                                if (!(z11 & true)) {
                                    this.f13639h = new ArrayList();
                                    z11 |= true;
                                }
                                this.f13639h.add(nVar.A(OneofDescriptorProto.f13951f, yVar));
                                continue;
                            case 74:
                                if (!(z11 & true)) {
                                    this.f13641j = new ArrayList();
                                    z11 |= true;
                                }
                                this.f13641j.add(nVar.A(ReservedRange.f13657f, yVar));
                                continue;
                            case 82:
                                ByteString r11 = nVar.r();
                                if (!(z11 & true)) {
                                    this.f13642k = new m0();
                                    z11 |= true;
                                }
                                this.f13642k.b(r11);
                                continue;
                            default:
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11 & true) {
                        this.f13634c = Collections.unmodifiableList(this.f13634c);
                    }
                    if (z11 & true) {
                        this.f13636e = Collections.unmodifiableList(this.f13636e);
                    }
                    if (z11 & true) {
                        this.f13637f = Collections.unmodifiableList(this.f13637f);
                    }
                    if (z11 & true) {
                        this.f13638g = Collections.unmodifiableList(this.f13638g);
                    }
                    if (z11 & true) {
                        this.f13635d = Collections.unmodifiableList(this.f13635d);
                    }
                    if (z11 & true) {
                        this.f13639h = Collections.unmodifiableList(this.f13639h);
                    }
                    if (z11 & true) {
                        this.f13641j = Collections.unmodifiableList(this.f13641j);
                    }
                    if (z11 & true) {
                        this.f13642k = this.f13642k.getUnmodifiableView();
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.f13634c = Collections.unmodifiableList(this.f13634c);
            }
            if (z11 & true) {
                this.f13636e = Collections.unmodifiableList(this.f13636e);
            }
            if (z11 & true) {
                this.f13637f = Collections.unmodifiableList(this.f13637f);
            }
            if (z11 & true) {
                this.f13638g = Collections.unmodifiableList(this.f13638g);
            }
            if (z11 & true) {
                this.f13635d = Collections.unmodifiableList(this.f13635d);
            }
            if (z11 & true) {
                this.f13639h = Collections.unmodifiableList(this.f13639h);
            }
            if (z11 & true) {
                this.f13641j = Collections.unmodifiableList(this.f13641j);
            }
            if (z11 & true) {
                this.f13642k = this.f13642k.getUnmodifiableView();
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class EnumDescriptorProto extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: h  reason: collision with root package name */
        private static final EnumDescriptorProto f13684h = new EnumDescriptorProto();
        @Deprecated

        /* renamed from: i  reason: collision with root package name */
        public static final j1<EnumDescriptorProto> f13685i = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f13686a;

        /* renamed from: b  reason: collision with root package name */
        private volatile Object f13687b;

        /* renamed from: c  reason: collision with root package name */
        private List<EnumValueDescriptorProto> f13688c;

        /* renamed from: d  reason: collision with root package name */
        private EnumOptions f13689d;

        /* renamed from: e  reason: collision with root package name */
        private List<EnumReservedRange> f13690e;

        /* renamed from: f  reason: collision with root package name */
        private n0 f13691f;

        /* renamed from: g  reason: collision with root package name */
        private byte f13692g;

        /* loaded from: classes3.dex */
        public static final class EnumReservedRange extends GeneratedMessageV3 implements MessageOrBuilder {

            /* renamed from: e  reason: collision with root package name */
            private static final EnumReservedRange f13693e = new EnumReservedRange();
            @Deprecated

            /* renamed from: f  reason: collision with root package name */
            public static final j1<EnumReservedRange> f13694f = new a();

            /* renamed from: a  reason: collision with root package name */
            private int f13695a;

            /* renamed from: b  reason: collision with root package name */
            private int f13696b;

            /* renamed from: c  reason: collision with root package name */
            private int f13697c;

            /* renamed from: d  reason: collision with root package name */
            private byte f13698d;

            /* loaded from: classes3.dex */
            static class a extends com.explorestack.protobuf.b<EnumReservedRange> {
                a() {
                }

                @Override // com.explorestack.protobuf.j1
                /* renamed from: a */
                public EnumReservedRange parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new EnumReservedRange(nVar, yVar);
                }
            }

            public static EnumReservedRange f() {
                return f13693e;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.f13622s;
            }

            public static b n() {
                return f13693e.toBuilder();
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof EnumReservedRange)) {
                    return super.equals(obj);
                }
                EnumReservedRange enumReservedRange = (EnumReservedRange) obj;
                if (k() != enumReservedRange.k()) {
                    return false;
                }
                if ((k() && i() != enumReservedRange.i()) || j() != enumReservedRange.j()) {
                    return false;
                }
                if ((!j() || h() == enumReservedRange.h()) && this.unknownFields.equals(enumReservedRange.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: g */
            public EnumReservedRange mo4630getDefaultInstanceForType() {
                return f13693e;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<EnumReservedRange> getParserForType() {
                return f13694f;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if ((this.f13695a & 1) != 0) {
                    i10 = CodedOutputStream.x(1, this.f13696b);
                } else {
                    i10 = 0;
                }
                if ((this.f13695a & 2) != 0) {
                    i10 += CodedOutputStream.x(2, this.f13697c);
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            public int h() {
                return this.f13697c;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (k()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + i();
                }
                if (j()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + h();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            public int i() {
                return this.f13696b;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13623t.d(EnumReservedRange.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.f13698d;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.f13698d = (byte) 1;
                return true;
            }

            public boolean j() {
                if ((this.f13695a & 2) != 0) {
                    return true;
                }
                return false;
            }

            public boolean k() {
                if ((this.f13695a & 1) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new EnumReservedRange();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: q */
            public b newBuilderForType() {
                return n();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            /* renamed from: r */
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: s */
            public b toBuilder() {
                if (this == f13693e) {
                    return new b();
                }
                return new b().l(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.f13695a & 1) != 0) {
                    codedOutputStream.H0(1, this.f13696b);
                }
                if ((this.f13695a & 2) != 0) {
                    codedOutputStream.H0(2, this.f13697c);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

                /* renamed from: a  reason: collision with root package name */
                private int f13699a;

                /* renamed from: b  reason: collision with root package name */
                private int f13700b;

                /* renamed from: c  reason: collision with root package name */
                private int f13701c;

                private void maybeForceBuilderInitialization() {
                    boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: a */
                public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: b */
                public EnumReservedRange build() {
                    EnumReservedRange buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: c */
                public EnumReservedRange buildPartial() {
                    int i10;
                    EnumReservedRange enumReservedRange = new EnumReservedRange(this);
                    int i11 = this.f13699a;
                    if ((i11 & 1) != 0) {
                        enumReservedRange.f13696b = this.f13700b;
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    if ((i11 & 2) != 0) {
                        enumReservedRange.f13697c = this.f13701c;
                        i10 |= 2;
                    }
                    enumReservedRange.f13695a = i10;
                    onBuilt();
                    return enumReservedRange;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: e */
                public b clear() {
                    super.clear();
                    this.f13700b = 0;
                    int i10 = this.f13699a;
                    this.f13701c = 0;
                    this.f13699a = i10 & (-4);
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: f */
                public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (b) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: g */
                public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (b) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return DescriptorProtos.f13622s;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: i */
                public b mo4628clone() {
                    return (b) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return DescriptorProtos.f13623t.d(EnumReservedRange.class, b.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: j */
                public EnumReservedRange mo4630getDefaultInstanceForType() {
                    return EnumReservedRange.f();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: k */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.DescriptorProtos.EnumDescriptorProto.EnumReservedRange.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$EnumDescriptorProto$EnumReservedRange> r1 = com.explorestack.protobuf.DescriptorProtos.EnumDescriptorProto.EnumReservedRange.f13694f     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        com.explorestack.protobuf.DescriptorProtos$EnumDescriptorProto$EnumReservedRange r3 = (com.explorestack.protobuf.DescriptorProtos.EnumDescriptorProto.EnumReservedRange) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        if (r3 == 0) goto Le
                        r2.l(r3)
                    Le:
                        return r2
                    Lf:
                        r3 = move-exception
                        goto L1f
                    L11:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                        com.explorestack.protobuf.DescriptorProtos$EnumDescriptorProto$EnumReservedRange r4 = (com.explorestack.protobuf.DescriptorProtos.EnumDescriptorProto.EnumReservedRange) r4     // Catch: java.lang.Throwable -> Lf
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                        throw r3     // Catch: java.lang.Throwable -> L1d
                    L1d:
                        r3 = move-exception
                        r0 = r4
                    L1f:
                        if (r0 == 0) goto L24
                        r2.l(r0)
                    L24:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.EnumDescriptorProto.EnumReservedRange.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$EnumDescriptorProto$EnumReservedRange$b");
                }

                public b l(EnumReservedRange enumReservedRange) {
                    if (enumReservedRange == EnumReservedRange.f()) {
                        return this;
                    }
                    if (enumReservedRange.k()) {
                        r(enumReservedRange.i());
                    }
                    if (enumReservedRange.j()) {
                        o(enumReservedRange.h());
                    }
                    mergeUnknownFields(enumReservedRange.unknownFields);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: m */
                public b mergeFrom(Message message) {
                    if (message instanceof EnumReservedRange) {
                        return l((EnumReservedRange) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: n */
                public final b mergeUnknownFields(j2 j2Var) {
                    return (b) super.mergeUnknownFields(j2Var);
                }

                public b o(int i10) {
                    this.f13699a |= 2;
                    this.f13701c = i10;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: p */
                public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.setField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: q */
                public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                public b r(int i10) {
                    this.f13699a |= 1;
                    this.f13700b = i10;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: s */
                public final b setUnknownFields(j2 j2Var) {
                    return (b) super.setUnknownFields(j2Var);
                }

                private b() {
                    maybeForceBuilderInitialization();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    maybeForceBuilderInitialization();
                }
            }

            private EnumReservedRange(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.f13698d = (byte) -1;
            }

            private EnumReservedRange() {
                this.f13698d = (byte) -1;
            }

            private EnumReservedRange(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 8) {
                                    this.f13695a |= 1;
                                    this.f13696b = nVar.y();
                                } else if (K != 16) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    this.f13695a |= 2;
                                    this.f13697c = nVar.y();
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }
        }

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<EnumDescriptorProto> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public EnumDescriptorProto parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new EnumDescriptorProto(nVar, yVar);
            }
        }

        public static b D() {
            return f13684h.toBuilder();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.f13620q;
        }

        public static EnumDescriptorProto q() {
            return f13684h;
        }

        public int A() {
            return this.f13688c.size();
        }

        public List<EnumValueDescriptorProto> B() {
            return this.f13688c;
        }

        public boolean C() {
            if ((this.f13686a & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: E */
        public b newBuilderForType() {
            return D();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: F */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: G */
        public b toBuilder() {
            if (this == f13684h) {
                return new b();
            }
            return new b().v(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EnumDescriptorProto)) {
                return super.equals(obj);
            }
            EnumDescriptorProto enumDescriptorProto = (EnumDescriptorProto) obj;
            if (hasName() != enumDescriptorProto.hasName()) {
                return false;
            }
            if ((hasName() && !getName().equals(enumDescriptorProto.getName())) || !B().equals(enumDescriptorProto.B()) || C() != enumDescriptorProto.C()) {
                return false;
            }
            if ((!C() || s().equals(enumDescriptorProto.s())) && y().equals(enumDescriptorProto.y()) && u().equals(enumDescriptorProto.u()) && this.unknownFields.equals(enumDescriptorProto.unknownFields)) {
                return true;
            }
            return false;
        }

        public String getName() {
            Object obj = this.f13687b;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13687b = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<EnumDescriptorProto> getParserForType() {
            return f13685i;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13686a & 1) != 0) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.f13687b);
            } else {
                i10 = 0;
            }
            for (int i12 = 0; i12 < this.f13688c.size(); i12++) {
                i10 += CodedOutputStream.G(2, this.f13688c.get(i12));
            }
            if ((this.f13686a & 2) != 0) {
                i10 += CodedOutputStream.G(3, s());
            }
            for (int i13 = 0; i13 < this.f13690e.size(); i13++) {
                i10 += CodedOutputStream.G(4, this.f13690e.get(i13));
            }
            int i14 = 0;
            for (int i15 = 0; i15 < this.f13691f.size(); i15++) {
                i14 += GeneratedMessageV3.computeStringSizeNoTag(this.f13691f.getRaw(i15));
            }
            int size = i10 + i14 + u().size() + this.unknownFields.getSerializedSize();
            this.memoizedSize = size;
            return size;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasName() {
            if ((this.f13686a & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasName()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
            }
            if (A() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + B().hashCode();
            }
            if (C()) {
                hashCode = (((hashCode * 37) + 3) * 53) + s().hashCode();
            }
            if (v() > 0) {
                hashCode = (((hashCode * 37) + 4) * 53) + y().hashCode();
            }
            if (t() > 0) {
                hashCode = (((hashCode * 37) + 5) * 53) + u().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.f13621r.d(EnumDescriptorProto.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13692g;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < A(); i10++) {
                if (!z(i10).isInitialized()) {
                    this.f13692g = (byte) 0;
                    return false;
                }
            }
            if (C() && !s().isInitialized()) {
                this.f13692g = (byte) 0;
                return false;
            }
            this.f13692g = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new EnumDescriptorProto();
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: r */
        public EnumDescriptorProto mo4630getDefaultInstanceForType() {
            return f13684h;
        }

        public EnumOptions s() {
            EnumOptions enumOptions = this.f13689d;
            if (enumOptions == null) {
                return EnumOptions.s();
            }
            return enumOptions;
        }

        public int t() {
            return this.f13691f.size();
        }

        public m1 u() {
            return this.f13691f;
        }

        public int v() {
            return this.f13690e.size();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.f13686a & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.f13687b);
            }
            for (int i10 = 0; i10 < this.f13688c.size(); i10++) {
                codedOutputStream.L0(2, this.f13688c.get(i10));
            }
            if ((this.f13686a & 2) != 0) {
                codedOutputStream.L0(3, s());
            }
            for (int i11 = 0; i11 < this.f13690e.size(); i11++) {
                codedOutputStream.L0(4, this.f13690e.get(i11));
            }
            for (int i12 = 0; i12 < this.f13691f.size(); i12++) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.f13691f.getRaw(i12));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public List<EnumReservedRange> y() {
            return this.f13690e;
        }

        public EnumValueDescriptorProto z(int i10) {
            return this.f13688c.get(i10);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f13702a;

            /* renamed from: b  reason: collision with root package name */
            private Object f13703b;

            /* renamed from: c  reason: collision with root package name */
            private List<EnumValueDescriptorProto> f13704c;

            /* renamed from: d  reason: collision with root package name */
            private p1<EnumValueDescriptorProto, EnumValueDescriptorProto.b, Object> f13705d;

            /* renamed from: e  reason: collision with root package name */
            private EnumOptions f13706e;

            /* renamed from: f  reason: collision with root package name */
            private t1<EnumOptions, EnumOptions.b, Object> f13707f;

            /* renamed from: g  reason: collision with root package name */
            private List<EnumReservedRange> f13708g;

            /* renamed from: h  reason: collision with root package name */
            private p1<EnumReservedRange, EnumReservedRange.b, Object> f13709h;

            /* renamed from: i  reason: collision with root package name */
            private n0 f13710i;

            private void j() {
                if ((this.f13702a & 16) == 0) {
                    this.f13710i = new m0(this.f13710i);
                    this.f13702a |= 16;
                }
            }

            private void k() {
                if ((this.f13702a & 8) == 0) {
                    this.f13708g = new ArrayList(this.f13708g);
                    this.f13702a |= 8;
                }
            }

            private void l() {
                if ((this.f13702a & 2) == 0) {
                    this.f13704c = new ArrayList(this.f13704c);
                    this.f13702a |= 2;
                }
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    s();
                    o();
                    p();
                }
            }

            private t1<EnumOptions, EnumOptions.b, Object> o() {
                if (this.f13707f == null) {
                    this.f13707f = new t1<>(n(), getParentForChildren(), isClean());
                    this.f13706e = null;
                }
                return this.f13707f;
            }

            private p1<EnumReservedRange, EnumReservedRange.b, Object> p() {
                boolean z10;
                if (this.f13709h == null) {
                    List<EnumReservedRange> list = this.f13708g;
                    if ((this.f13702a & 8) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13709h = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13708g = null;
                }
                return this.f13709h;
            }

            private p1<EnumValueDescriptorProto, EnumValueDescriptorProto.b, Object> s() {
                boolean z10;
                if (this.f13705d == null) {
                    List<EnumValueDescriptorProto> list = this.f13704c;
                    if ((this.f13702a & 2) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13705d = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13704c = null;
                }
                return this.f13705d;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: A */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: B */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: a */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public EnumDescriptorProto build() {
                EnumDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public EnumDescriptorProto buildPartial() {
                int i10;
                EnumDescriptorProto enumDescriptorProto = new EnumDescriptorProto(this);
                int i11 = this.f13702a;
                if ((i11 & 1) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                enumDescriptorProto.f13687b = this.f13703b;
                p1<EnumValueDescriptorProto, EnumValueDescriptorProto.b, Object> p1Var = this.f13705d;
                if (p1Var != null) {
                    enumDescriptorProto.f13688c = p1Var.f();
                } else {
                    if ((this.f13702a & 2) != 0) {
                        this.f13704c = Collections.unmodifiableList(this.f13704c);
                        this.f13702a &= -3;
                    }
                    enumDescriptorProto.f13688c = this.f13704c;
                }
                if ((i11 & 4) != 0) {
                    t1<EnumOptions, EnumOptions.b, Object> t1Var = this.f13707f;
                    if (t1Var == null) {
                        enumDescriptorProto.f13689d = this.f13706e;
                    } else {
                        enumDescriptorProto.f13689d = t1Var.a();
                    }
                    i10 |= 2;
                }
                p1<EnumReservedRange, EnumReservedRange.b, Object> p1Var2 = this.f13709h;
                if (p1Var2 != null) {
                    enumDescriptorProto.f13690e = p1Var2.f();
                } else {
                    if ((this.f13702a & 8) != 0) {
                        this.f13708g = Collections.unmodifiableList(this.f13708g);
                        this.f13702a &= -9;
                    }
                    enumDescriptorProto.f13690e = this.f13708g;
                }
                if ((this.f13702a & 16) != 0) {
                    this.f13710i = this.f13710i.getUnmodifiableView();
                    this.f13702a &= -17;
                }
                enumDescriptorProto.f13691f = this.f13710i;
                enumDescriptorProto.f13686a = i10;
                onBuilt();
                return enumDescriptorProto;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public b clear() {
                super.clear();
                this.f13703b = "";
                this.f13702a &= -2;
                p1<EnumValueDescriptorProto, EnumValueDescriptorProto.b, Object> p1Var = this.f13705d;
                if (p1Var == null) {
                    this.f13704c = Collections.emptyList();
                    this.f13702a &= -3;
                } else {
                    p1Var.g();
                }
                t1<EnumOptions, EnumOptions.b, Object> t1Var = this.f13707f;
                if (t1Var == null) {
                    this.f13706e = null;
                } else {
                    t1Var.b();
                }
                this.f13702a &= -5;
                p1<EnumReservedRange, EnumReservedRange.b, Object> p1Var2 = this.f13709h;
                if (p1Var2 == null) {
                    this.f13708g = Collections.emptyList();
                    this.f13702a &= -9;
                } else {
                    p1Var2.g();
                }
                this.f13710i = m0.f14459d;
                this.f13702a &= -17;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.f13620q;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13621r.d(EnumDescriptorProto.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < r(); i10++) {
                    if (!q(i10).isInitialized()) {
                        return false;
                    }
                }
                if (t() && !n().isInitialized()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: m */
            public EnumDescriptorProto mo4630getDefaultInstanceForType() {
                return EnumDescriptorProto.q();
            }

            public EnumOptions n() {
                t1<EnumOptions, EnumOptions.b, Object> t1Var = this.f13707f;
                if (t1Var == null) {
                    EnumOptions enumOptions = this.f13706e;
                    if (enumOptions == null) {
                        return EnumOptions.s();
                    }
                    return enumOptions;
                }
                return t1Var.e();
            }

            public EnumValueDescriptorProto q(int i10) {
                p1<EnumValueDescriptorProto, EnumValueDescriptorProto.b, Object> p1Var = this.f13705d;
                if (p1Var == null) {
                    return this.f13704c.get(i10);
                }
                return p1Var.n(i10);
            }

            public int r() {
                p1<EnumValueDescriptorProto, EnumValueDescriptorProto.b, Object> p1Var = this.f13705d;
                if (p1Var == null) {
                    return this.f13704c.size();
                }
                return p1Var.m();
            }

            public boolean t() {
                if ((this.f13702a & 4) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: u */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.EnumDescriptorProto.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$EnumDescriptorProto> r1 = com.explorestack.protobuf.DescriptorProtos.EnumDescriptorProto.f13685i     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$EnumDescriptorProto r3 = (com.explorestack.protobuf.DescriptorProtos.EnumDescriptorProto) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.v(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$EnumDescriptorProto r4 = (com.explorestack.protobuf.DescriptorProtos.EnumDescriptorProto) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.v(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.EnumDescriptorProto.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$EnumDescriptorProto$b");
            }

            public b v(EnumDescriptorProto enumDescriptorProto) {
                p1<EnumValueDescriptorProto, EnumValueDescriptorProto.b, Object> p1Var;
                if (enumDescriptorProto == EnumDescriptorProto.q()) {
                    return this;
                }
                if (enumDescriptorProto.hasName()) {
                    this.f13702a |= 1;
                    this.f13703b = enumDescriptorProto.f13687b;
                    onChanged();
                }
                p1<EnumReservedRange, EnumReservedRange.b, Object> p1Var2 = null;
                if (this.f13705d == null) {
                    if (!enumDescriptorProto.f13688c.isEmpty()) {
                        if (this.f13704c.isEmpty()) {
                            this.f13704c = enumDescriptorProto.f13688c;
                            this.f13702a &= -3;
                        } else {
                            l();
                            this.f13704c.addAll(enumDescriptorProto.f13688c);
                        }
                        onChanged();
                    }
                } else if (!enumDescriptorProto.f13688c.isEmpty()) {
                    if (this.f13705d.t()) {
                        this.f13705d.h();
                        this.f13705d = null;
                        this.f13704c = enumDescriptorProto.f13688c;
                        this.f13702a &= -3;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = s();
                        } else {
                            p1Var = null;
                        }
                        this.f13705d = p1Var;
                    } else {
                        this.f13705d.a(enumDescriptorProto.f13688c);
                    }
                }
                if (enumDescriptorProto.C()) {
                    x(enumDescriptorProto.s());
                }
                if (this.f13709h == null) {
                    if (!enumDescriptorProto.f13690e.isEmpty()) {
                        if (this.f13708g.isEmpty()) {
                            this.f13708g = enumDescriptorProto.f13690e;
                            this.f13702a &= -9;
                        } else {
                            k();
                            this.f13708g.addAll(enumDescriptorProto.f13690e);
                        }
                        onChanged();
                    }
                } else if (!enumDescriptorProto.f13690e.isEmpty()) {
                    if (this.f13709h.t()) {
                        this.f13709h.h();
                        this.f13709h = null;
                        this.f13708g = enumDescriptorProto.f13690e;
                        this.f13702a &= -9;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var2 = p();
                        }
                        this.f13709h = p1Var2;
                    } else {
                        this.f13709h.a(enumDescriptorProto.f13690e);
                    }
                }
                if (!enumDescriptorProto.f13691f.isEmpty()) {
                    if (this.f13710i.isEmpty()) {
                        this.f13710i = enumDescriptorProto.f13691f;
                        this.f13702a &= -17;
                    } else {
                        j();
                        this.f13710i.addAll(enumDescriptorProto.f13691f);
                    }
                    onChanged();
                }
                mergeUnknownFields(enumDescriptorProto.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: w */
            public b mergeFrom(Message message) {
                if (message instanceof EnumDescriptorProto) {
                    return v((EnumDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public b x(EnumOptions enumOptions) {
                EnumOptions enumOptions2;
                t1<EnumOptions, EnumOptions.b, Object> t1Var = this.f13707f;
                if (t1Var == null) {
                    if ((this.f13702a & 4) != 0 && (enumOptions2 = this.f13706e) != null && enumOptions2 != EnumOptions.s()) {
                        this.f13706e = EnumOptions.D(this.f13706e).A(enumOptions).buildPartial();
                    } else {
                        this.f13706e = enumOptions;
                    }
                    onChanged();
                } else {
                    t1Var.g(enumOptions);
                }
                this.f13702a |= 4;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: y */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: z */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            private b() {
                this.f13703b = "";
                this.f13704c = Collections.emptyList();
                this.f13708g = Collections.emptyList();
                this.f13710i = m0.f14459d;
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13703b = "";
                this.f13704c = Collections.emptyList();
                this.f13708g = Collections.emptyList();
                this.f13710i = m0.f14459d;
                maybeForceBuilderInitialization();
            }
        }

        private EnumDescriptorProto(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f13692g = (byte) -1;
        }

        private EnumDescriptorProto() {
            this.f13692g = (byte) -1;
            this.f13687b = "";
            this.f13688c = Collections.emptyList();
            this.f13690e = Collections.emptyList();
            this.f13691f = m0.f14459d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private EnumDescriptorProto(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 10) {
                                ByteString r10 = nVar.r();
                                this.f13686a = 1 | this.f13686a;
                                this.f13687b = r10;
                            } else if (K == 18) {
                                if (!(z11 & true)) {
                                    this.f13688c = new ArrayList();
                                    z11 |= true;
                                }
                                this.f13688c.add(nVar.A(EnumValueDescriptorProto.f13724g, yVar));
                            } else if (K == 26) {
                                EnumOptions.b builder = (this.f13686a & 2) != 0 ? this.f13689d.toBuilder() : null;
                                EnumOptions enumOptions = (EnumOptions) nVar.A(EnumOptions.f13712h, yVar);
                                this.f13689d = enumOptions;
                                if (builder != null) {
                                    builder.A(enumOptions);
                                    this.f13689d = builder.buildPartial();
                                }
                                this.f13686a |= 2;
                            } else if (K == 34) {
                                if (!(z11 & true)) {
                                    this.f13690e = new ArrayList();
                                    z11 |= true;
                                }
                                this.f13690e.add(nVar.A(EnumReservedRange.f13694f, yVar));
                            } else if (K != 42) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                ByteString r11 = nVar.r();
                                if (!(z11 & true)) {
                                    this.f13691f = new m0();
                                    z11 |= true;
                                }
                                this.f13691f.b(r11);
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11 & true) {
                        this.f13688c = Collections.unmodifiableList(this.f13688c);
                    }
                    if (z11 & true) {
                        this.f13690e = Collections.unmodifiableList(this.f13690e);
                    }
                    if (z11 & true) {
                        this.f13691f = this.f13691f.getUnmodifiableView();
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.f13688c = Collections.unmodifiableList(this.f13688c);
            }
            if (z11 & true) {
                this.f13690e = Collections.unmodifiableList(this.f13690e);
            }
            if (z11 & true) {
                this.f13691f = this.f13691f.getUnmodifiableView();
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class EnumOptions extends GeneratedMessageV3.ExtendableMessage<EnumOptions> implements MessageOrBuilder {

        /* renamed from: g  reason: collision with root package name */
        private static final EnumOptions f13711g = new EnumOptions();
        @Deprecated

        /* renamed from: h  reason: collision with root package name */
        public static final j1<EnumOptions> f13712h = new a();

        /* renamed from: b  reason: collision with root package name */
        private int f13713b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f13714c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f13715d;

        /* renamed from: e  reason: collision with root package name */
        private List<UninterpretedOption> f13716e;

        /* renamed from: f  reason: collision with root package name */
        private byte f13717f;

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<EnumOptions> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public EnumOptions parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new EnumOptions(nVar, yVar);
            }
        }

        public static b C() {
            return f13711g.toBuilder();
        }

        public static b D(EnumOptions enumOptions) {
            return f13711g.toBuilder().A(enumOptions);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.I;
        }

        public static EnumOptions s() {
            return f13711g;
        }

        public boolean A() {
            if ((this.f13713b & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean B() {
            if ((this.f13713b & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: E */
        public b newBuilderForType() {
            return C();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: F */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: G */
        public b toBuilder() {
            if (this == f13711g) {
                return new b();
            }
            return new b().A(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EnumOptions)) {
                return super.equals(obj);
            }
            EnumOptions enumOptions = (EnumOptions) obj;
            if (A() != enumOptions.A()) {
                return false;
            }
            if ((A() && r() != enumOptions.r()) || B() != enumOptions.B()) {
                return false;
            }
            if ((!B() || u() == enumOptions.u()) && z().equals(enumOptions.z()) && this.unknownFields.equals(enumOptions.unknownFields) && f().equals(enumOptions.f())) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<EnumOptions> getParserForType() {
            return f13712h;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13713b & 1) != 0) {
                i10 = CodedOutputStream.e(2, this.f13714c);
            } else {
                i10 = 0;
            }
            if ((2 & this.f13713b) != 0) {
                i10 += CodedOutputStream.e(3, this.f13715d);
            }
            for (int i12 = 0; i12 < this.f13716e.size(); i12++) {
                i10 += CodedOutputStream.G(999, this.f13716e.get(i12));
            }
            int e10 = i10 + e() + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (A()) {
                hashCode = (((hashCode * 37) + 2) * 53) + i0.d(r());
            }
            if (B()) {
                hashCode = (((hashCode * 37) + 3) * 53) + i0.d(u());
            }
            if (y() > 0) {
                hashCode = (((hashCode * 37) + 999) * 53) + z().hashCode();
            }
            int hashFields = (AbstractMessage.hashFields(hashCode, f()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashFields;
            return hashFields;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.J.d(EnumOptions.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.ExtendableMessage, com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13717f;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < y(); i10++) {
                if (!v(i10).isInitialized()) {
                    this.f13717f = (byte) 0;
                    return false;
                }
            }
            if (!d()) {
                this.f13717f = (byte) 0;
                return false;
            }
            this.f13717f = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new EnumOptions();
        }

        public boolean r() {
            return this.f13714c;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: t */
        public EnumOptions mo4630getDefaultInstanceForType() {
            return f13711g;
        }

        public boolean u() {
            return this.f13715d;
        }

        public UninterpretedOption v(int i10) {
            return this.f13716e.get(i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            GeneratedMessageV3.ExtendableMessage<MessageType>.a g10 = g();
            if ((this.f13713b & 1) != 0) {
                codedOutputStream.n0(2, this.f13714c);
            }
            if ((this.f13713b & 2) != 0) {
                codedOutputStream.n0(3, this.f13715d);
            }
            for (int i10 = 0; i10 < this.f13716e.size(); i10++) {
                codedOutputStream.L0(999, this.f13716e.get(i10));
            }
            g10.a(536870912, codedOutputStream);
            this.unknownFields.writeTo(codedOutputStream);
        }

        public int y() {
            return this.f13716e.size();
        }

        public List<UninterpretedOption> z() {
            return this.f13716e;
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.d<EnumOptions, b> implements MessageOrBuilder {

            /* renamed from: b  reason: collision with root package name */
            private int f13718b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f13719c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f13720d;

            /* renamed from: e  reason: collision with root package name */
            private List<UninterpretedOption> f13721e;

            /* renamed from: f  reason: collision with root package name */
            private p1<UninterpretedOption, UninterpretedOption.b, Object> f13722f;

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    y();
                }
            }

            private void u() {
                if ((this.f13718b & 4) == 0) {
                    this.f13721e = new ArrayList(this.f13721e);
                    this.f13718b |= 4;
                }
            }

            private p1<UninterpretedOption, UninterpretedOption.b, Object> y() {
                boolean z10;
                if (this.f13722f == null) {
                    List<UninterpretedOption> list = this.f13721e;
                    if ((this.f13718b & 4) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13722f = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13721e = null;
                }
                return this.f13722f;
            }

            public b A(EnumOptions enumOptions) {
                if (enumOptions == EnumOptions.s()) {
                    return this;
                }
                if (enumOptions.A()) {
                    D(enumOptions.r());
                }
                if (enumOptions.B()) {
                    E(enumOptions.u());
                }
                if (this.f13722f == null) {
                    if (!enumOptions.f13716e.isEmpty()) {
                        if (this.f13721e.isEmpty()) {
                            this.f13721e = enumOptions.f13716e;
                            this.f13718b &= -5;
                        } else {
                            u();
                            this.f13721e.addAll(enumOptions.f13716e);
                        }
                        onChanged();
                    }
                } else if (!enumOptions.f13716e.isEmpty()) {
                    if (this.f13722f.t()) {
                        this.f13722f.h();
                        p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = null;
                        this.f13722f = null;
                        this.f13721e = enumOptions.f13716e;
                        this.f13718b &= -5;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = y();
                        }
                        this.f13722f = p1Var;
                    } else {
                        this.f13722f.a(enumOptions.f13716e);
                    }
                }
                j(enumOptions);
                mergeUnknownFields(enumOptions.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: B */
            public b mergeFrom(Message message) {
                if (message instanceof EnumOptions) {
                    return A((EnumOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: C */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            public b D(boolean z10) {
                this.f13718b |= 1;
                this.f13719c = z10;
                onChanged();
                return this;
            }

            public b E(boolean z10) {
                this.f13718b |= 2;
                this.f13720d = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: F */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: G */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: H */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.I;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.J.d(EnumOptions.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < x(); i10++) {
                    if (!w(i10).isInitialized()) {
                        return false;
                    }
                }
                if (!i()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: n */
            public b b(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            public EnumOptions build() {
                EnumOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public EnumOptions buildPartial() {
                int i10;
                EnumOptions enumOptions = new EnumOptions(this);
                int i11 = this.f13718b;
                if ((i11 & 1) != 0) {
                    enumOptions.f13714c = this.f13719c;
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if ((i11 & 2) != 0) {
                    enumOptions.f13715d = this.f13720d;
                    i10 |= 2;
                }
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13722f;
                if (p1Var != null) {
                    enumOptions.f13716e = p1Var.f();
                } else {
                    if ((this.f13718b & 4) != 0) {
                        this.f13721e = Collections.unmodifiableList(this.f13721e);
                        this.f13718b &= -5;
                    }
                    enumOptions.f13716e = this.f13721e;
                }
                enumOptions.f13713b = i10;
                onBuilt();
                return enumOptions;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: q */
            public b e() {
                super.clear();
                this.f13719c = false;
                int i10 = this.f13718b;
                this.f13720d = false;
                this.f13718b = i10 & (-4);
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13722f;
                if (p1Var == null) {
                    this.f13721e = Collections.emptyList();
                    this.f13718b &= -5;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: r */
            public b f(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: t */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: v */
            public EnumOptions mo4630getDefaultInstanceForType() {
                return EnumOptions.s();
            }

            public UninterpretedOption w(int i10) {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13722f;
                if (p1Var == null) {
                    return this.f13721e.get(i10);
                }
                return p1Var.n(i10);
            }

            public int x() {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13722f;
                if (p1Var == null) {
                    return this.f13721e.size();
                }
                return p1Var.m();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: z */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.EnumOptions.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$EnumOptions> r1 = com.explorestack.protobuf.DescriptorProtos.EnumOptions.f13712h     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$EnumOptions r3 = (com.explorestack.protobuf.DescriptorProtos.EnumOptions) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.A(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$EnumOptions r4 = (com.explorestack.protobuf.DescriptorProtos.EnumOptions) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.A(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.EnumOptions.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$EnumOptions$b");
            }

            private b() {
                this.f13721e = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13721e = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private EnumOptions(GeneratedMessageV3.d<EnumOptions, ?> dVar) {
            super(dVar);
            this.f13717f = (byte) -1;
        }

        private EnumOptions() {
            this.f13717f = (byte) -1;
            this.f13716e = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private EnumOptions(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 16) {
                                this.f13713b |= 1;
                                this.f13714c = nVar.q();
                            } else if (K == 24) {
                                this.f13713b |= 2;
                                this.f13715d = nVar.q();
                            } else if (K != 7994) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.f13716e = new ArrayList();
                                    z11 = true;
                                }
                                this.f13716e.add(nVar.A(UninterpretedOption.f14015k, yVar));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11 & true) {
                        this.f13716e = Collections.unmodifiableList(this.f13716e);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.f13716e = Collections.unmodifiableList(this.f13716e);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class EnumValueDescriptorProto extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: f  reason: collision with root package name */
        private static final EnumValueDescriptorProto f13723f = new EnumValueDescriptorProto();
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        public static final j1<EnumValueDescriptorProto> f13724g = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f13725a;

        /* renamed from: b  reason: collision with root package name */
        private volatile Object f13726b;

        /* renamed from: c  reason: collision with root package name */
        private int f13727c;

        /* renamed from: d  reason: collision with root package name */
        private EnumValueOptions f13728d;

        /* renamed from: e  reason: collision with root package name */
        private byte f13729e;

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<EnumValueDescriptorProto> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public EnumValueDescriptorProto parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new EnumValueDescriptorProto(nVar, yVar);
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.f13624u;
        }

        public static EnumValueDescriptorProto h() {
            return f13723f;
        }

        public static b r() {
            return f13723f.toBuilder();
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EnumValueDescriptorProto)) {
                return super.equals(obj);
            }
            EnumValueDescriptorProto enumValueDescriptorProto = (EnumValueDescriptorProto) obj;
            if (hasName() != enumValueDescriptorProto.hasName()) {
                return false;
            }
            if ((hasName() && !getName().equals(enumValueDescriptorProto.getName())) || n() != enumValueDescriptorProto.n()) {
                return false;
            }
            if ((n() && j() != enumValueDescriptorProto.j()) || q() != enumValueDescriptorProto.q()) {
                return false;
            }
            if ((!q() || k().equals(enumValueDescriptorProto.k())) && this.unknownFields.equals(enumValueDescriptorProto.unknownFields)) {
                return true;
            }
            return false;
        }

        public String getName() {
            Object obj = this.f13726b;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13726b = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<EnumValueDescriptorProto> getParserForType() {
            return f13724g;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13725a & 1) != 0) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.f13726b);
            } else {
                i10 = 0;
            }
            if ((this.f13725a & 2) != 0) {
                i10 += CodedOutputStream.x(2, this.f13727c);
            }
            if ((this.f13725a & 4) != 0) {
                i10 += CodedOutputStream.G(3, k());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasName() {
            if ((this.f13725a & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasName()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
            }
            if (n()) {
                hashCode = (((hashCode * 37) + 2) * 53) + j();
            }
            if (q()) {
                hashCode = (((hashCode * 37) + 3) * 53) + k().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: i */
        public EnumValueDescriptorProto mo4630getDefaultInstanceForType() {
            return f13723f;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.f13625v.d(EnumValueDescriptorProto.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13729e;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            if (q() && !k().isInitialized()) {
                this.f13729e = (byte) 0;
                return false;
            }
            this.f13729e = (byte) 1;
            return true;
        }

        public int j() {
            return this.f13727c;
        }

        public EnumValueOptions k() {
            EnumValueOptions enumValueOptions = this.f13728d;
            if (enumValueOptions == null) {
                return EnumValueOptions.q();
            }
            return enumValueOptions;
        }

        public boolean n() {
            if ((this.f13725a & 2) != 0) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new EnumValueDescriptorProto();
        }

        public boolean q() {
            if ((this.f13725a & 4) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: s */
        public b newBuilderForType() {
            return r();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: t */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: u */
        public b toBuilder() {
            if (this == f13723f) {
                return new b();
            }
            return new b().o(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.f13725a & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.f13726b);
            }
            if ((this.f13725a & 2) != 0) {
                codedOutputStream.H0(2, this.f13727c);
            }
            if ((this.f13725a & 4) != 0) {
                codedOutputStream.L0(3, k());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f13730a;

            /* renamed from: b  reason: collision with root package name */
            private Object f13731b;

            /* renamed from: c  reason: collision with root package name */
            private int f13732c;

            /* renamed from: d  reason: collision with root package name */
            private EnumValueOptions f13733d;

            /* renamed from: e  reason: collision with root package name */
            private t1<EnumValueOptions, EnumValueOptions.b, Object> f13734e;

            private t1<EnumValueOptions, EnumValueOptions.b, Object> l() {
                if (this.f13734e == null) {
                    this.f13734e = new t1<>(k(), getParentForChildren(), isClean());
                    this.f13733d = null;
                }
                return this.f13734e;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    l();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: a */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public EnumValueDescriptorProto build() {
                EnumValueDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public EnumValueDescriptorProto buildPartial() {
                int i10;
                EnumValueDescriptorProto enumValueDescriptorProto = new EnumValueDescriptorProto(this);
                int i11 = this.f13730a;
                if ((i11 & 1) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                enumValueDescriptorProto.f13726b = this.f13731b;
                if ((i11 & 2) != 0) {
                    enumValueDescriptorProto.f13727c = this.f13732c;
                    i10 |= 2;
                }
                if ((i11 & 4) != 0) {
                    t1<EnumValueOptions, EnumValueOptions.b, Object> t1Var = this.f13734e;
                    if (t1Var == null) {
                        enumValueDescriptorProto.f13728d = this.f13733d;
                    } else {
                        enumValueDescriptorProto.f13728d = t1Var.a();
                    }
                    i10 |= 4;
                }
                enumValueDescriptorProto.f13725a = i10;
                onBuilt();
                return enumValueDescriptorProto;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public b clear() {
                super.clear();
                this.f13731b = "";
                int i10 = this.f13730a;
                this.f13732c = 0;
                this.f13730a = i10 & (-4);
                t1<EnumValueOptions, EnumValueOptions.b, Object> t1Var = this.f13734e;
                if (t1Var == null) {
                    this.f13733d = null;
                } else {
                    t1Var.b();
                }
                this.f13730a &= -5;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.f13624u;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13625v.d(EnumValueDescriptorProto.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                if (m() && !k().isInitialized()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: j */
            public EnumValueDescriptorProto mo4630getDefaultInstanceForType() {
                return EnumValueDescriptorProto.h();
            }

            public EnumValueOptions k() {
                t1<EnumValueOptions, EnumValueOptions.b, Object> t1Var = this.f13734e;
                if (t1Var == null) {
                    EnumValueOptions enumValueOptions = this.f13733d;
                    if (enumValueOptions == null) {
                        return EnumValueOptions.q();
                    }
                    return enumValueOptions;
                }
                return t1Var.e();
            }

            public boolean m() {
                if ((this.f13730a & 4) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: n */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.EnumValueDescriptorProto.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$EnumValueDescriptorProto> r1 = com.explorestack.protobuf.DescriptorProtos.EnumValueDescriptorProto.f13724g     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$EnumValueDescriptorProto r3 = (com.explorestack.protobuf.DescriptorProtos.EnumValueDescriptorProto) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.o(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$EnumValueDescriptorProto r4 = (com.explorestack.protobuf.DescriptorProtos.EnumValueDescriptorProto) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.o(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.EnumValueDescriptorProto.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$EnumValueDescriptorProto$b");
            }

            public b o(EnumValueDescriptorProto enumValueDescriptorProto) {
                if (enumValueDescriptorProto == EnumValueDescriptorProto.h()) {
                    return this;
                }
                if (enumValueDescriptorProto.hasName()) {
                    this.f13730a |= 1;
                    this.f13731b = enumValueDescriptorProto.f13726b;
                    onChanged();
                }
                if (enumValueDescriptorProto.n()) {
                    u(enumValueDescriptorProto.j());
                }
                if (enumValueDescriptorProto.q()) {
                    q(enumValueDescriptorProto.k());
                }
                mergeUnknownFields(enumValueDescriptorProto.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public b mergeFrom(Message message) {
                if (message instanceof EnumValueDescriptorProto) {
                    return o((EnumValueDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public b q(EnumValueOptions enumValueOptions) {
                EnumValueOptions enumValueOptions2;
                t1<EnumValueOptions, EnumValueOptions.b, Object> t1Var = this.f13734e;
                if (t1Var == null) {
                    if ((this.f13730a & 4) != 0 && (enumValueOptions2 = this.f13733d) != null && enumValueOptions2 != EnumValueOptions.q()) {
                        this.f13733d = EnumValueOptions.A(this.f13733d).A(enumValueOptions).buildPartial();
                    } else {
                        this.f13733d = enumValueOptions;
                    }
                    onChanged();
                } else {
                    t1Var.g(enumValueOptions);
                }
                this.f13730a |= 4;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: r */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            public b t(String str) {
                str.getClass();
                this.f13730a |= 1;
                this.f13731b = str;
                onChanged();
                return this;
            }

            public b u(int i10) {
                this.f13730a |= 2;
                this.f13732c = i10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: v */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: w */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            private b() {
                this.f13731b = "";
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13731b = "";
                maybeForceBuilderInitialization();
            }
        }

        private EnumValueDescriptorProto(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f13729e = (byte) -1;
        }

        private EnumValueDescriptorProto() {
            this.f13729e = (byte) -1;
            this.f13726b = "";
        }

        private EnumValueDescriptorProto(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 10) {
                                ByteString r10 = nVar.r();
                                this.f13725a = 1 | this.f13725a;
                                this.f13726b = r10;
                            } else if (K == 16) {
                                this.f13725a |= 2;
                                this.f13727c = nVar.y();
                            } else if (K != 26) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                EnumValueOptions.b builder = (this.f13725a & 4) != 0 ? this.f13728d.toBuilder() : null;
                                EnumValueOptions enumValueOptions = (EnumValueOptions) nVar.A(EnumValueOptions.f13736g, yVar);
                                this.f13728d = enumValueOptions;
                                if (builder != null) {
                                    builder.A(enumValueOptions);
                                    this.f13728d = builder.buildPartial();
                                }
                                this.f13725a |= 4;
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class EnumValueOptions extends GeneratedMessageV3.ExtendableMessage<EnumValueOptions> implements MessageOrBuilder {

        /* renamed from: f  reason: collision with root package name */
        private static final EnumValueOptions f13735f = new EnumValueOptions();
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        public static final j1<EnumValueOptions> f13736g = new a();

        /* renamed from: b  reason: collision with root package name */
        private int f13737b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f13738c;

        /* renamed from: d  reason: collision with root package name */
        private List<UninterpretedOption> f13739d;

        /* renamed from: e  reason: collision with root package name */
        private byte f13740e;

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<EnumValueOptions> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public EnumValueOptions parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new EnumValueOptions(nVar, yVar);
            }
        }

        public static b A(EnumValueOptions enumValueOptions) {
            return f13735f.toBuilder().A(enumValueOptions);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.K;
        }

        public static EnumValueOptions q() {
            return f13735f;
        }

        public static b z() {
            return f13735f.toBuilder();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: B */
        public b newBuilderForType() {
            return z();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: C */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: D */
        public b toBuilder() {
            if (this == f13735f) {
                return new b();
            }
            return new b().A(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EnumValueOptions)) {
                return super.equals(obj);
            }
            EnumValueOptions enumValueOptions = (EnumValueOptions) obj;
            if (y() != enumValueOptions.y()) {
                return false;
            }
            if ((!y() || s() == enumValueOptions.s()) && v().equals(enumValueOptions.v()) && this.unknownFields.equals(enumValueOptions.unknownFields) && f().equals(enumValueOptions.f())) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<EnumValueOptions> getParserForType() {
            return f13736g;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13737b & 1) != 0) {
                i10 = CodedOutputStream.e(1, this.f13738c);
            } else {
                i10 = 0;
            }
            for (int i12 = 0; i12 < this.f13739d.size(); i12++) {
                i10 += CodedOutputStream.G(999, this.f13739d.get(i12));
            }
            int e10 = i10 + e() + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (y()) {
                hashCode = (((hashCode * 37) + 1) * 53) + i0.d(s());
            }
            if (u() > 0) {
                hashCode = (((hashCode * 37) + 999) * 53) + v().hashCode();
            }
            int hashFields = (AbstractMessage.hashFields(hashCode, f()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashFields;
            return hashFields;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.L.d(EnumValueOptions.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.ExtendableMessage, com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13740e;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < u(); i10++) {
                if (!t(i10).isInitialized()) {
                    this.f13740e = (byte) 0;
                    return false;
                }
            }
            if (!d()) {
                this.f13740e = (byte) 0;
                return false;
            }
            this.f13740e = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new EnumValueOptions();
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: r */
        public EnumValueOptions mo4630getDefaultInstanceForType() {
            return f13735f;
        }

        public boolean s() {
            return this.f13738c;
        }

        public UninterpretedOption t(int i10) {
            return this.f13739d.get(i10);
        }

        public int u() {
            return this.f13739d.size();
        }

        public List<UninterpretedOption> v() {
            return this.f13739d;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            GeneratedMessageV3.ExtendableMessage<MessageType>.a g10 = g();
            if ((this.f13737b & 1) != 0) {
                codedOutputStream.n0(1, this.f13738c);
            }
            for (int i10 = 0; i10 < this.f13739d.size(); i10++) {
                codedOutputStream.L0(999, this.f13739d.get(i10));
            }
            g10.a(536870912, codedOutputStream);
            this.unknownFields.writeTo(codedOutputStream);
        }

        public boolean y() {
            if ((this.f13737b & 1) != 0) {
                return true;
            }
            return false;
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.d<EnumValueOptions, b> implements MessageOrBuilder {

            /* renamed from: b  reason: collision with root package name */
            private int f13741b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f13742c;

            /* renamed from: d  reason: collision with root package name */
            private List<UninterpretedOption> f13743d;

            /* renamed from: e  reason: collision with root package name */
            private p1<UninterpretedOption, UninterpretedOption.b, Object> f13744e;

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    y();
                }
            }

            private void u() {
                if ((this.f13741b & 2) == 0) {
                    this.f13743d = new ArrayList(this.f13743d);
                    this.f13741b |= 2;
                }
            }

            private p1<UninterpretedOption, UninterpretedOption.b, Object> y() {
                boolean z10;
                if (this.f13744e == null) {
                    List<UninterpretedOption> list = this.f13743d;
                    if ((this.f13741b & 2) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13744e = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13743d = null;
                }
                return this.f13744e;
            }

            public b A(EnumValueOptions enumValueOptions) {
                if (enumValueOptions == EnumValueOptions.q()) {
                    return this;
                }
                if (enumValueOptions.y()) {
                    D(enumValueOptions.s());
                }
                if (this.f13744e == null) {
                    if (!enumValueOptions.f13739d.isEmpty()) {
                        if (this.f13743d.isEmpty()) {
                            this.f13743d = enumValueOptions.f13739d;
                            this.f13741b &= -3;
                        } else {
                            u();
                            this.f13743d.addAll(enumValueOptions.f13739d);
                        }
                        onChanged();
                    }
                } else if (!enumValueOptions.f13739d.isEmpty()) {
                    if (this.f13744e.t()) {
                        this.f13744e.h();
                        p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = null;
                        this.f13744e = null;
                        this.f13743d = enumValueOptions.f13739d;
                        this.f13741b &= -3;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = y();
                        }
                        this.f13744e = p1Var;
                    } else {
                        this.f13744e.a(enumValueOptions.f13739d);
                    }
                }
                j(enumValueOptions);
                mergeUnknownFields(enumValueOptions.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: B */
            public b mergeFrom(Message message) {
                if (message instanceof EnumValueOptions) {
                    return A((EnumValueOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: C */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            public b D(boolean z10) {
                this.f13741b |= 1;
                this.f13742c = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: E */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: F */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: G */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.K;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.L.d(EnumValueOptions.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < x(); i10++) {
                    if (!w(i10).isInitialized()) {
                        return false;
                    }
                }
                if (!i()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: n */
            public b b(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            public EnumValueOptions build() {
                EnumValueOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public EnumValueOptions buildPartial() {
                EnumValueOptions enumValueOptions = new EnumValueOptions(this);
                int i10 = 1;
                if ((this.f13741b & 1) != 0) {
                    enumValueOptions.f13738c = this.f13742c;
                } else {
                    i10 = 0;
                }
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13744e;
                if (p1Var != null) {
                    enumValueOptions.f13739d = p1Var.f();
                } else {
                    if ((this.f13741b & 2) != 0) {
                        this.f13743d = Collections.unmodifiableList(this.f13743d);
                        this.f13741b &= -3;
                    }
                    enumValueOptions.f13739d = this.f13743d;
                }
                enumValueOptions.f13737b = i10;
                onBuilt();
                return enumValueOptions;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: q */
            public b e() {
                super.clear();
                this.f13742c = false;
                this.f13741b &= -2;
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13744e;
                if (p1Var == null) {
                    this.f13743d = Collections.emptyList();
                    this.f13741b &= -3;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: r */
            public b f(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: t */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: v */
            public EnumValueOptions mo4630getDefaultInstanceForType() {
                return EnumValueOptions.q();
            }

            public UninterpretedOption w(int i10) {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13744e;
                if (p1Var == null) {
                    return this.f13743d.get(i10);
                }
                return p1Var.n(i10);
            }

            public int x() {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13744e;
                if (p1Var == null) {
                    return this.f13743d.size();
                }
                return p1Var.m();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: z */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.EnumValueOptions.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$EnumValueOptions> r1 = com.explorestack.protobuf.DescriptorProtos.EnumValueOptions.f13736g     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$EnumValueOptions r3 = (com.explorestack.protobuf.DescriptorProtos.EnumValueOptions) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.A(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$EnumValueOptions r4 = (com.explorestack.protobuf.DescriptorProtos.EnumValueOptions) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.A(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.EnumValueOptions.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$EnumValueOptions$b");
            }

            private b() {
                this.f13743d = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13743d = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private EnumValueOptions(GeneratedMessageV3.d<EnumValueOptions, ?> dVar) {
            super(dVar);
            this.f13740e = (byte) -1;
        }

        private EnumValueOptions() {
            this.f13740e = (byte) -1;
            this.f13739d = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private EnumValueOptions(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 8) {
                                this.f13737b |= 1;
                                this.f13738c = nVar.q();
                            } else if (K != 7994) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.f13739d = new ArrayList();
                                    z11 = true;
                                }
                                this.f13739d.add(nVar.A(UninterpretedOption.f14015k, yVar));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11 & true) {
                        this.f13739d = Collections.unmodifiableList(this.f13739d);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.f13739d = Collections.unmodifiableList(this.f13739d);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ExtensionRangeOptions extends GeneratedMessageV3.ExtendableMessage<ExtensionRangeOptions> implements MessageOrBuilder {

        /* renamed from: d  reason: collision with root package name */
        private static final ExtensionRangeOptions f13745d = new ExtensionRangeOptions();
        @Deprecated

        /* renamed from: e  reason: collision with root package name */
        public static final j1<ExtensionRangeOptions> f13746e = new a();

        /* renamed from: b  reason: collision with root package name */
        private List<UninterpretedOption> f13747b;

        /* renamed from: c  reason: collision with root package name */
        private byte f13748c;

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<ExtensionRangeOptions> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public ExtensionRangeOptions parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new ExtensionRangeOptions(nVar, yVar);
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.f13614k;
        }

        public static ExtensionRangeOptions k() {
            return f13745d;
        }

        public static b t() {
            return f13745d.toBuilder();
        }

        public static b u(ExtensionRangeOptions extensionRangeOptions) {
            return f13745d.toBuilder().A(extensionRangeOptions);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ExtensionRangeOptions)) {
                return super.equals(obj);
            }
            ExtensionRangeOptions extensionRangeOptions = (ExtensionRangeOptions) obj;
            if (s().equals(extensionRangeOptions.s()) && this.unknownFields.equals(extensionRangeOptions.unknownFields) && f().equals(extensionRangeOptions.f())) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<ExtensionRangeOptions> getParserForType() {
            return f13746e;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.f13747b.size(); i12++) {
                i11 += CodedOutputStream.G(999, this.f13747b.get(i12));
            }
            int e10 = i11 + e() + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (r() > 0) {
                hashCode = (((hashCode * 37) + 999) * 53) + s().hashCode();
            }
            int hashFields = (AbstractMessage.hashFields(hashCode, f()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashFields;
            return hashFields;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.f13615l.d(ExtensionRangeOptions.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.ExtendableMessage, com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13748c;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < r(); i10++) {
                if (!q(i10).isInitialized()) {
                    this.f13748c = (byte) 0;
                    return false;
                }
            }
            if (!d()) {
                this.f13748c = (byte) 0;
                return false;
            }
            this.f13748c = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: n */
        public ExtensionRangeOptions mo4630getDefaultInstanceForType() {
            return f13745d;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new ExtensionRangeOptions();
        }

        public UninterpretedOption q(int i10) {
            return this.f13747b.get(i10);
        }

        public int r() {
            return this.f13747b.size();
        }

        public List<UninterpretedOption> s() {
            return this.f13747b;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: v */
        public b newBuilderForType() {
            return t();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            GeneratedMessageV3.ExtendableMessage<MessageType>.a g10 = g();
            for (int i10 = 0; i10 < this.f13747b.size(); i10++) {
                codedOutputStream.L0(999, this.f13747b.get(i10));
            }
            g10.a(536870912, codedOutputStream);
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: y */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: z */
        public b toBuilder() {
            if (this == f13745d) {
                return new b();
            }
            return new b().A(this);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.d<ExtensionRangeOptions, b> implements MessageOrBuilder {

            /* renamed from: b  reason: collision with root package name */
            private int f13749b;

            /* renamed from: c  reason: collision with root package name */
            private List<UninterpretedOption> f13750c;

            /* renamed from: d  reason: collision with root package name */
            private p1<UninterpretedOption, UninterpretedOption.b, Object> f13751d;

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    y();
                }
            }

            private void u() {
                if ((this.f13749b & 1) == 0) {
                    this.f13750c = new ArrayList(this.f13750c);
                    this.f13749b |= 1;
                }
            }

            private p1<UninterpretedOption, UninterpretedOption.b, Object> y() {
                if (this.f13751d == null) {
                    List<UninterpretedOption> list = this.f13750c;
                    boolean z10 = true;
                    if ((this.f13749b & 1) == 0) {
                        z10 = false;
                    }
                    this.f13751d = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13750c = null;
                }
                return this.f13751d;
            }

            public b A(ExtensionRangeOptions extensionRangeOptions) {
                if (extensionRangeOptions == ExtensionRangeOptions.k()) {
                    return this;
                }
                if (this.f13751d == null) {
                    if (!extensionRangeOptions.f13747b.isEmpty()) {
                        if (this.f13750c.isEmpty()) {
                            this.f13750c = extensionRangeOptions.f13747b;
                            this.f13749b &= -2;
                        } else {
                            u();
                            this.f13750c.addAll(extensionRangeOptions.f13747b);
                        }
                        onChanged();
                    }
                } else if (!extensionRangeOptions.f13747b.isEmpty()) {
                    if (this.f13751d.t()) {
                        this.f13751d.h();
                        p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = null;
                        this.f13751d = null;
                        this.f13750c = extensionRangeOptions.f13747b;
                        this.f13749b &= -2;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = y();
                        }
                        this.f13751d = p1Var;
                    } else {
                        this.f13751d.a(extensionRangeOptions.f13747b);
                    }
                }
                j(extensionRangeOptions);
                mergeUnknownFields(extensionRangeOptions.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: B */
            public b mergeFrom(Message message) {
                if (message instanceof ExtensionRangeOptions) {
                    return A((ExtensionRangeOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: C */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: D */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: E */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: F */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.f13614k;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13615l.d(ExtensionRangeOptions.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < x(); i10++) {
                    if (!w(i10).isInitialized()) {
                        return false;
                    }
                }
                if (!i()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: n */
            public b b(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            public ExtensionRangeOptions build() {
                ExtensionRangeOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public ExtensionRangeOptions buildPartial() {
                ExtensionRangeOptions extensionRangeOptions = new ExtensionRangeOptions(this);
                int i10 = this.f13749b;
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13751d;
                if (p1Var != null) {
                    extensionRangeOptions.f13747b = p1Var.f();
                } else {
                    if ((i10 & 1) != 0) {
                        this.f13750c = Collections.unmodifiableList(this.f13750c);
                        this.f13749b &= -2;
                    }
                    extensionRangeOptions.f13747b = this.f13750c;
                }
                onBuilt();
                return extensionRangeOptions;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: q */
            public b e() {
                super.clear();
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13751d;
                if (p1Var == null) {
                    this.f13750c = Collections.emptyList();
                    this.f13749b &= -2;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: r */
            public b f(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: t */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: v */
            public ExtensionRangeOptions mo4630getDefaultInstanceForType() {
                return ExtensionRangeOptions.k();
            }

            public UninterpretedOption w(int i10) {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13751d;
                if (p1Var == null) {
                    return this.f13750c.get(i10);
                }
                return p1Var.n(i10);
            }

            public int x() {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13751d;
                if (p1Var == null) {
                    return this.f13750c.size();
                }
                return p1Var.m();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: z */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.ExtensionRangeOptions.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$ExtensionRangeOptions> r1 = com.explorestack.protobuf.DescriptorProtos.ExtensionRangeOptions.f13746e     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$ExtensionRangeOptions r3 = (com.explorestack.protobuf.DescriptorProtos.ExtensionRangeOptions) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.A(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$ExtensionRangeOptions r4 = (com.explorestack.protobuf.DescriptorProtos.ExtensionRangeOptions) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.A(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.ExtensionRangeOptions.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$ExtensionRangeOptions$b");
            }

            private b() {
                this.f13750c = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13750c = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private ExtensionRangeOptions(GeneratedMessageV3.d<ExtensionRangeOptions, ?> dVar) {
            super(dVar);
            this.f13748c = (byte) -1;
        }

        private ExtensionRangeOptions() {
            this.f13748c = (byte) -1;
            this.f13747b = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private ExtensionRangeOptions(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K != 7994) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    if (!z11) {
                                        this.f13747b = new ArrayList();
                                        z11 = true;
                                    }
                                    this.f13747b.add(nVar.A(UninterpretedOption.f14015k, yVar));
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11) {
                        this.f13747b = Collections.unmodifiableList(this.f13747b);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11) {
                this.f13747b = Collections.unmodifiableList(this.f13747b);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class FieldDescriptorProto extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: n  reason: collision with root package name */
        private static final FieldDescriptorProto f13752n = new FieldDescriptorProto();
        @Deprecated

        /* renamed from: o  reason: collision with root package name */
        public static final j1<FieldDescriptorProto> f13753o = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f13754a;

        /* renamed from: b  reason: collision with root package name */
        private volatile Object f13755b;

        /* renamed from: c  reason: collision with root package name */
        private int f13756c;

        /* renamed from: d  reason: collision with root package name */
        private int f13757d;

        /* renamed from: e  reason: collision with root package name */
        private int f13758e;

        /* renamed from: f  reason: collision with root package name */
        private volatile Object f13759f;

        /* renamed from: g  reason: collision with root package name */
        private volatile Object f13760g;

        /* renamed from: h  reason: collision with root package name */
        private volatile Object f13761h;

        /* renamed from: i  reason: collision with root package name */
        private int f13762i;

        /* renamed from: j  reason: collision with root package name */
        private volatile Object f13763j;

        /* renamed from: k  reason: collision with root package name */
        private FieldOptions f13764k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f13765l;

        /* renamed from: m  reason: collision with root package name */
        private byte f13766m;

        /* loaded from: classes3.dex */
        public enum Label implements i0.c {
            LABEL_OPTIONAL(1),
            LABEL_REQUIRED(2),
            LABEL_REPEATED(3);
            
            public static final int LABEL_OPTIONAL_VALUE = 1;
            public static final int LABEL_REPEATED_VALUE = 3;
            public static final int LABEL_REQUIRED_VALUE = 2;
            private final int value;
            private static final i0.d<Label> internalValueMap = new a();
            private static final Label[] VALUES = values();

            /* loaded from: classes3.dex */
            static class a implements i0.d<Label> {
                a() {
                }

                @Override // com.explorestack.protobuf.i0.d
                /* renamed from: a */
                public Label findValueByNumber(int i10) {
                    return Label.forNumber(i10);
                }
            }

            Label(int i10) {
                this.value = i10;
            }

            public static Label forNumber(int i10) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return null;
                        }
                        return LABEL_REPEATED;
                    }
                    return LABEL_REQUIRED;
                }
                return LABEL_OPTIONAL;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return FieldDescriptorProto.getDescriptor().getEnumTypes().get(1);
            }

            public static i0.d<Label> internalGetValueMap() {
                return internalValueMap;
            }

            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.explorestack.protobuf.i0.c
            public final int getNumber() {
                return this.value;
            }

            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(ordinal());
            }

            @Deprecated
            public static Label valueOf(int i10) {
                return forNumber(i10);
            }

            public static Label valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes3.dex */
        public enum Type implements i0.c {
            TYPE_DOUBLE(1),
            TYPE_FLOAT(2),
            TYPE_INT64(3),
            TYPE_UINT64(4),
            TYPE_INT32(5),
            TYPE_FIXED64(6),
            TYPE_FIXED32(7),
            TYPE_BOOL(8),
            TYPE_STRING(9),
            TYPE_GROUP(10),
            TYPE_MESSAGE(11),
            TYPE_BYTES(12),
            TYPE_UINT32(13),
            TYPE_ENUM(14),
            TYPE_SFIXED32(15),
            TYPE_SFIXED64(16),
            TYPE_SINT32(17),
            TYPE_SINT64(18);
            
            public static final int TYPE_BOOL_VALUE = 8;
            public static final int TYPE_BYTES_VALUE = 12;
            public static final int TYPE_DOUBLE_VALUE = 1;
            public static final int TYPE_ENUM_VALUE = 14;
            public static final int TYPE_FIXED32_VALUE = 7;
            public static final int TYPE_FIXED64_VALUE = 6;
            public static final int TYPE_FLOAT_VALUE = 2;
            public static final int TYPE_GROUP_VALUE = 10;
            public static final int TYPE_INT32_VALUE = 5;
            public static final int TYPE_INT64_VALUE = 3;
            public static final int TYPE_MESSAGE_VALUE = 11;
            public static final int TYPE_SFIXED32_VALUE = 15;
            public static final int TYPE_SFIXED64_VALUE = 16;
            public static final int TYPE_SINT32_VALUE = 17;
            public static final int TYPE_SINT64_VALUE = 18;
            public static final int TYPE_STRING_VALUE = 9;
            public static final int TYPE_UINT32_VALUE = 13;
            public static final int TYPE_UINT64_VALUE = 4;
            private final int value;
            private static final i0.d<Type> internalValueMap = new a();
            private static final Type[] VALUES = values();

            /* loaded from: classes3.dex */
            static class a implements i0.d<Type> {
                a() {
                }

                @Override // com.explorestack.protobuf.i0.d
                /* renamed from: a */
                public Type findValueByNumber(int i10) {
                    return Type.forNumber(i10);
                }
            }

            Type(int i10) {
                this.value = i10;
            }

            public static Type forNumber(int i10) {
                switch (i10) {
                    case 1:
                        return TYPE_DOUBLE;
                    case 2:
                        return TYPE_FLOAT;
                    case 3:
                        return TYPE_INT64;
                    case 4:
                        return TYPE_UINT64;
                    case 5:
                        return TYPE_INT32;
                    case 6:
                        return TYPE_FIXED64;
                    case 7:
                        return TYPE_FIXED32;
                    case 8:
                        return TYPE_BOOL;
                    case 9:
                        return TYPE_STRING;
                    case 10:
                        return TYPE_GROUP;
                    case 11:
                        return TYPE_MESSAGE;
                    case 12:
                        return TYPE_BYTES;
                    case 13:
                        return TYPE_UINT32;
                    case 14:
                        return TYPE_ENUM;
                    case 15:
                        return TYPE_SFIXED32;
                    case 16:
                        return TYPE_SFIXED64;
                    case 17:
                        return TYPE_SINT32;
                    case 18:
                        return TYPE_SINT64;
                    default:
                        return null;
                }
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return FieldDescriptorProto.getDescriptor().getEnumTypes().get(0);
            }

            public static i0.d<Type> internalGetValueMap() {
                return internalValueMap;
            }

            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.explorestack.protobuf.i0.c
            public final int getNumber() {
                return this.value;
            }

            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(ordinal());
            }

            @Deprecated
            public static Type valueOf(int i10) {
                return forNumber(i10);
            }

            public static Type valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<FieldDescriptorProto> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public FieldDescriptorProto parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new FieldDescriptorProto(nVar, yVar);
            }
        }

        public static b W() {
            return f13752n.toBuilder();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.f13616m;
        }

        public static FieldDescriptorProto z() {
            return f13752n;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: A */
        public FieldDescriptorProto mo4630getDefaultInstanceForType() {
            return f13752n;
        }

        public String B() {
            Object obj = this.f13761h;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13761h = stringUtf8;
            }
            return stringUtf8;
        }

        public String C() {
            Object obj = this.f13760g;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13760g = stringUtf8;
            }
            return stringUtf8;
        }

        public String D() {
            Object obj = this.f13763j;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13763j = stringUtf8;
            }
            return stringUtf8;
        }

        public Label E() {
            Label valueOf = Label.valueOf(this.f13757d);
            if (valueOf == null) {
                return Label.LABEL_OPTIONAL;
            }
            return valueOf;
        }

        public int F() {
            return this.f13756c;
        }

        public int G() {
            return this.f13762i;
        }

        public FieldOptions H() {
            FieldOptions fieldOptions = this.f13764k;
            if (fieldOptions == null) {
                return FieldOptions.y();
            }
            return fieldOptions;
        }

        public boolean I() {
            return this.f13765l;
        }

        public Type J() {
            Type valueOf = Type.valueOf(this.f13758e);
            if (valueOf == null) {
                return Type.TYPE_DOUBLE;
            }
            return valueOf;
        }

        public String K() {
            Object obj = this.f13759f;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13759f = stringUtf8;
            }
            return stringUtf8;
        }

        public boolean L() {
            if ((this.f13754a & 64) != 0) {
                return true;
            }
            return false;
        }

        public boolean M() {
            if ((this.f13754a & 32) != 0) {
                return true;
            }
            return false;
        }

        public boolean N() {
            if ((this.f13754a & 256) != 0) {
                return true;
            }
            return false;
        }

        public boolean O() {
            if ((this.f13754a & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean P() {
            if ((this.f13754a & 128) != 0) {
                return true;
            }
            return false;
        }

        public boolean Q() {
            if ((this.f13754a & 512) != 0) {
                return true;
            }
            return false;
        }

        public boolean S() {
            if ((this.f13754a & 1024) != 0) {
                return true;
            }
            return false;
        }

        public boolean U() {
            if ((this.f13754a & 8) != 0) {
                return true;
            }
            return false;
        }

        public boolean V() {
            if ((this.f13754a & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: X */
        public b newBuilderForType() {
            return W();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: Y */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: Z */
        public b toBuilder() {
            if (this == f13752n) {
                return new b();
            }
            return new b().o(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FieldDescriptorProto)) {
                return super.equals(obj);
            }
            FieldDescriptorProto fieldDescriptorProto = (FieldDescriptorProto) obj;
            if (hasName() != fieldDescriptorProto.hasName()) {
                return false;
            }
            if ((hasName() && !getName().equals(fieldDescriptorProto.getName())) || O() != fieldDescriptorProto.O()) {
                return false;
            }
            if ((O() && F() != fieldDescriptorProto.F()) || hasLabel() != fieldDescriptorProto.hasLabel()) {
                return false;
            }
            if ((hasLabel() && this.f13757d != fieldDescriptorProto.f13757d) || U() != fieldDescriptorProto.U()) {
                return false;
            }
            if ((U() && this.f13758e != fieldDescriptorProto.f13758e) || V() != fieldDescriptorProto.V()) {
                return false;
            }
            if ((V() && !K().equals(fieldDescriptorProto.K())) || M() != fieldDescriptorProto.M()) {
                return false;
            }
            if ((M() && !C().equals(fieldDescriptorProto.C())) || L() != fieldDescriptorProto.L()) {
                return false;
            }
            if ((L() && !B().equals(fieldDescriptorProto.B())) || P() != fieldDescriptorProto.P()) {
                return false;
            }
            if ((P() && G() != fieldDescriptorProto.G()) || N() != fieldDescriptorProto.N()) {
                return false;
            }
            if ((N() && !D().equals(fieldDescriptorProto.D())) || Q() != fieldDescriptorProto.Q()) {
                return false;
            }
            if ((Q() && !H().equals(fieldDescriptorProto.H())) || S() != fieldDescriptorProto.S()) {
                return false;
            }
            if ((!S() || I() == fieldDescriptorProto.I()) && this.unknownFields.equals(fieldDescriptorProto.unknownFields)) {
                return true;
            }
            return false;
        }

        public String getName() {
            Object obj = this.f13755b;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13755b = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<FieldDescriptorProto> getParserForType() {
            return f13753o;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13754a & 1) != 0) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.f13755b);
            } else {
                i10 = 0;
            }
            if ((this.f13754a & 32) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(2, this.f13760g);
            }
            if ((this.f13754a & 2) != 0) {
                i10 += CodedOutputStream.x(3, this.f13756c);
            }
            if ((this.f13754a & 4) != 0) {
                i10 += CodedOutputStream.l(4, this.f13757d);
            }
            if ((this.f13754a & 8) != 0) {
                i10 += CodedOutputStream.l(5, this.f13758e);
            }
            if ((this.f13754a & 16) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(6, this.f13759f);
            }
            if ((this.f13754a & 64) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(7, this.f13761h);
            }
            if ((this.f13754a & 512) != 0) {
                i10 += CodedOutputStream.G(8, H());
            }
            if ((this.f13754a & 128) != 0) {
                i10 += CodedOutputStream.x(9, this.f13762i);
            }
            if ((this.f13754a & 256) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(10, this.f13763j);
            }
            if ((this.f13754a & 1024) != 0) {
                i10 += CodedOutputStream.e(17, this.f13765l);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasLabel() {
            if ((this.f13754a & 4) != 0) {
                return true;
            }
            return false;
        }

        public boolean hasName() {
            if ((this.f13754a & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasName()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
            }
            if (O()) {
                hashCode = (((hashCode * 37) + 3) * 53) + F();
            }
            if (hasLabel()) {
                hashCode = (((hashCode * 37) + 4) * 53) + this.f13757d;
            }
            if (U()) {
                hashCode = (((hashCode * 37) + 5) * 53) + this.f13758e;
            }
            if (V()) {
                hashCode = (((hashCode * 37) + 6) * 53) + K().hashCode();
            }
            if (M()) {
                hashCode = (((hashCode * 37) + 2) * 53) + C().hashCode();
            }
            if (L()) {
                hashCode = (((hashCode * 37) + 7) * 53) + B().hashCode();
            }
            if (P()) {
                hashCode = (((hashCode * 37) + 9) * 53) + G();
            }
            if (N()) {
                hashCode = (((hashCode * 37) + 10) * 53) + D().hashCode();
            }
            if (Q()) {
                hashCode = (((hashCode * 37) + 8) * 53) + H().hashCode();
            }
            if (S()) {
                hashCode = (((hashCode * 37) + 17) * 53) + i0.d(I());
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.f13617n.d(FieldDescriptorProto.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13766m;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            if (Q() && !H().isInitialized()) {
                this.f13766m = (byte) 0;
                return false;
            }
            this.f13766m = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new FieldDescriptorProto();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.f13754a & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.f13755b);
            }
            if ((this.f13754a & 32) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.f13760g);
            }
            if ((this.f13754a & 2) != 0) {
                codedOutputStream.H0(3, this.f13756c);
            }
            if ((this.f13754a & 4) != 0) {
                codedOutputStream.v0(4, this.f13757d);
            }
            if ((this.f13754a & 8) != 0) {
                codedOutputStream.v0(5, this.f13758e);
            }
            if ((this.f13754a & 16) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.f13759f);
            }
            if ((this.f13754a & 64) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 7, this.f13761h);
            }
            if ((this.f13754a & 512) != 0) {
                codedOutputStream.L0(8, H());
            }
            if ((this.f13754a & 128) != 0) {
                codedOutputStream.H0(9, this.f13762i);
            }
            if ((this.f13754a & 256) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.f13763j);
            }
            if ((this.f13754a & 1024) != 0) {
                codedOutputStream.n0(17, this.f13765l);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f13767a;

            /* renamed from: b  reason: collision with root package name */
            private Object f13768b;

            /* renamed from: c  reason: collision with root package name */
            private int f13769c;

            /* renamed from: d  reason: collision with root package name */
            private int f13770d;

            /* renamed from: e  reason: collision with root package name */
            private int f13771e;

            /* renamed from: f  reason: collision with root package name */
            private Object f13772f;

            /* renamed from: g  reason: collision with root package name */
            private Object f13773g;

            /* renamed from: h  reason: collision with root package name */
            private Object f13774h;

            /* renamed from: i  reason: collision with root package name */
            private int f13775i;

            /* renamed from: j  reason: collision with root package name */
            private Object f13776j;

            /* renamed from: k  reason: collision with root package name */
            private FieldOptions f13777k;

            /* renamed from: l  reason: collision with root package name */
            private t1<FieldOptions, FieldOptions.b, Object> f13778l;

            /* renamed from: m  reason: collision with root package name */
            private boolean f13779m;

            private t1<FieldOptions, FieldOptions.b, Object> l() {
                if (this.f13778l == null) {
                    this.f13778l = new t1<>(k(), getParentForChildren(), isClean());
                    this.f13777k = null;
                }
                return this.f13778l;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    l();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: a */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public FieldDescriptorProto build() {
                FieldDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public FieldDescriptorProto buildPartial() {
                int i10;
                FieldDescriptorProto fieldDescriptorProto = new FieldDescriptorProto(this);
                int i11 = this.f13767a;
                if ((i11 & 1) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                fieldDescriptorProto.f13755b = this.f13768b;
                if ((i11 & 2) != 0) {
                    fieldDescriptorProto.f13756c = this.f13769c;
                    i10 |= 2;
                }
                if ((i11 & 4) != 0) {
                    i10 |= 4;
                }
                fieldDescriptorProto.f13757d = this.f13770d;
                if ((i11 & 8) != 0) {
                    i10 |= 8;
                }
                fieldDescriptorProto.f13758e = this.f13771e;
                if ((i11 & 16) != 0) {
                    i10 |= 16;
                }
                fieldDescriptorProto.f13759f = this.f13772f;
                if ((i11 & 32) != 0) {
                    i10 |= 32;
                }
                fieldDescriptorProto.f13760g = this.f13773g;
                if ((i11 & 64) != 0) {
                    i10 |= 64;
                }
                fieldDescriptorProto.f13761h = this.f13774h;
                if ((i11 & 128) != 0) {
                    fieldDescriptorProto.f13762i = this.f13775i;
                    i10 |= 128;
                }
                if ((i11 & 256) != 0) {
                    i10 |= 256;
                }
                fieldDescriptorProto.f13763j = this.f13776j;
                if ((i11 & 512) != 0) {
                    t1<FieldOptions, FieldOptions.b, Object> t1Var = this.f13778l;
                    if (t1Var == null) {
                        fieldDescriptorProto.f13764k = this.f13777k;
                    } else {
                        fieldDescriptorProto.f13764k = t1Var.a();
                    }
                    i10 |= 512;
                }
                if ((i11 & 1024) != 0) {
                    fieldDescriptorProto.f13765l = this.f13779m;
                    i10 |= 1024;
                }
                fieldDescriptorProto.f13754a = i10;
                onBuilt();
                return fieldDescriptorProto;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public b clear() {
                super.clear();
                this.f13768b = "";
                int i10 = this.f13767a;
                this.f13769c = 0;
                this.f13770d = 1;
                this.f13771e = 1;
                this.f13772f = "";
                this.f13773g = "";
                this.f13774h = "";
                this.f13775i = 0;
                this.f13776j = "";
                this.f13767a = i10 & (-512);
                t1<FieldOptions, FieldOptions.b, Object> t1Var = this.f13778l;
                if (t1Var == null) {
                    this.f13777k = null;
                } else {
                    t1Var.b();
                }
                int i11 = this.f13767a;
                this.f13779m = false;
                this.f13767a = i11 & (-1537);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.f13616m;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13617n.d(FieldDescriptorProto.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                if (m() && !k().isInitialized()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: j */
            public FieldDescriptorProto mo4630getDefaultInstanceForType() {
                return FieldDescriptorProto.z();
            }

            public FieldOptions k() {
                t1<FieldOptions, FieldOptions.b, Object> t1Var = this.f13778l;
                if (t1Var == null) {
                    FieldOptions fieldOptions = this.f13777k;
                    if (fieldOptions == null) {
                        return FieldOptions.y();
                    }
                    return fieldOptions;
                }
                return t1Var.e();
            }

            public boolean m() {
                if ((this.f13767a & 512) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: n */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.FieldDescriptorProto.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$FieldDescriptorProto> r1 = com.explorestack.protobuf.DescriptorProtos.FieldDescriptorProto.f13753o     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$FieldDescriptorProto r3 = (com.explorestack.protobuf.DescriptorProtos.FieldDescriptorProto) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.o(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$FieldDescriptorProto r4 = (com.explorestack.protobuf.DescriptorProtos.FieldDescriptorProto) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.o(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.FieldDescriptorProto.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$FieldDescriptorProto$b");
            }

            public b o(FieldDescriptorProto fieldDescriptorProto) {
                if (fieldDescriptorProto == FieldDescriptorProto.z()) {
                    return this;
                }
                if (fieldDescriptorProto.hasName()) {
                    this.f13767a |= 1;
                    this.f13768b = fieldDescriptorProto.f13755b;
                    onChanged();
                }
                if (fieldDescriptorProto.O()) {
                    u(fieldDescriptorProto.F());
                }
                if (fieldDescriptorProto.hasLabel()) {
                    t(fieldDescriptorProto.E());
                }
                if (fieldDescriptorProto.U()) {
                    y(fieldDescriptorProto.J());
                }
                if (fieldDescriptorProto.V()) {
                    this.f13767a |= 16;
                    this.f13772f = fieldDescriptorProto.f13759f;
                    onChanged();
                }
                if (fieldDescriptorProto.M()) {
                    this.f13767a |= 32;
                    this.f13773g = fieldDescriptorProto.f13760g;
                    onChanged();
                }
                if (fieldDescriptorProto.L()) {
                    this.f13767a |= 64;
                    this.f13774h = fieldDescriptorProto.f13761h;
                    onChanged();
                }
                if (fieldDescriptorProto.P()) {
                    v(fieldDescriptorProto.G());
                }
                if (fieldDescriptorProto.N()) {
                    this.f13767a |= 256;
                    this.f13776j = fieldDescriptorProto.f13763j;
                    onChanged();
                }
                if (fieldDescriptorProto.Q()) {
                    q(fieldDescriptorProto.H());
                }
                if (fieldDescriptorProto.S()) {
                    w(fieldDescriptorProto.I());
                }
                mergeUnknownFields(fieldDescriptorProto.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public b mergeFrom(Message message) {
                if (message instanceof FieldDescriptorProto) {
                    return o((FieldDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public b q(FieldOptions fieldOptions) {
                FieldOptions fieldOptions2;
                t1<FieldOptions, FieldOptions.b, Object> t1Var = this.f13778l;
                if (t1Var == null) {
                    if ((this.f13767a & 512) != 0 && (fieldOptions2 = this.f13777k) != null && fieldOptions2 != FieldOptions.y()) {
                        this.f13777k = FieldOptions.P(this.f13777k).A(fieldOptions).buildPartial();
                    } else {
                        this.f13777k = fieldOptions;
                    }
                    onChanged();
                } else {
                    t1Var.g(fieldOptions);
                }
                this.f13767a |= 512;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: r */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            public b t(Label label) {
                label.getClass();
                this.f13767a |= 4;
                this.f13770d = label.getNumber();
                onChanged();
                return this;
            }

            public b u(int i10) {
                this.f13767a |= 2;
                this.f13769c = i10;
                onChanged();
                return this;
            }

            public b v(int i10) {
                this.f13767a |= 128;
                this.f13775i = i10;
                onChanged();
                return this;
            }

            public b w(boolean z10) {
                this.f13767a |= 1024;
                this.f13779m = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: x */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            public b y(Type type) {
                type.getClass();
                this.f13767a |= 8;
                this.f13771e = type.getNumber();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: z */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            private b() {
                this.f13768b = "";
                this.f13770d = 1;
                this.f13771e = 1;
                this.f13772f = "";
                this.f13773g = "";
                this.f13774h = "";
                this.f13776j = "";
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13768b = "";
                this.f13770d = 1;
                this.f13771e = 1;
                this.f13772f = "";
                this.f13773g = "";
                this.f13774h = "";
                this.f13776j = "";
                maybeForceBuilderInitialization();
            }
        }

        private FieldDescriptorProto(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f13766m = (byte) -1;
        }

        private FieldDescriptorProto() {
            this.f13766m = (byte) -1;
            this.f13755b = "";
            this.f13757d = 1;
            this.f13758e = 1;
            this.f13759f = "";
            this.f13760g = "";
            this.f13761h = "";
            this.f13763j = "";
        }

        private FieldDescriptorProto(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        switch (K) {
                            case 0:
                                break;
                            case 10:
                                ByteString r10 = nVar.r();
                                this.f13754a = 1 | this.f13754a;
                                this.f13755b = r10;
                                continue;
                            case 18:
                                ByteString r11 = nVar.r();
                                this.f13754a |= 32;
                                this.f13760g = r11;
                                continue;
                            case 24:
                                this.f13754a |= 2;
                                this.f13756c = nVar.y();
                                continue;
                            case 32:
                                int t10 = nVar.t();
                                if (Label.valueOf(t10) == null) {
                                    g10.A(4, t10);
                                } else {
                                    this.f13754a |= 4;
                                    this.f13757d = t10;
                                    continue;
                                }
                            case 40:
                                int t11 = nVar.t();
                                if (Type.valueOf(t11) == null) {
                                    g10.A(5, t11);
                                } else {
                                    this.f13754a |= 8;
                                    this.f13758e = t11;
                                    continue;
                                }
                            case 50:
                                ByteString r12 = nVar.r();
                                this.f13754a |= 16;
                                this.f13759f = r12;
                                continue;
                            case 58:
                                ByteString r13 = nVar.r();
                                this.f13754a |= 64;
                                this.f13761h = r13;
                                continue;
                            case 66:
                                FieldOptions.b builder = (this.f13754a & 512) != 0 ? this.f13764k.toBuilder() : null;
                                FieldOptions fieldOptions = (FieldOptions) nVar.A(FieldOptions.f13781l, yVar);
                                this.f13764k = fieldOptions;
                                if (builder != null) {
                                    builder.A(fieldOptions);
                                    this.f13764k = builder.buildPartial();
                                }
                                this.f13754a |= 512;
                                continue;
                            case 72:
                                this.f13754a |= 128;
                                this.f13762i = nVar.y();
                                continue;
                            case 82:
                                ByteString r14 = nVar.r();
                                this.f13754a |= 256;
                                this.f13763j = r14;
                                continue;
                            case 136:
                                this.f13754a |= 1024;
                                this.f13765l = nVar.q();
                                continue;
                            default:
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class FieldOptions extends GeneratedMessageV3.ExtendableMessage<FieldOptions> implements MessageOrBuilder {

        /* renamed from: k  reason: collision with root package name */
        private static final FieldOptions f13780k = new FieldOptions();
        @Deprecated

        /* renamed from: l  reason: collision with root package name */
        public static final j1<FieldOptions> f13781l = new a();

        /* renamed from: b  reason: collision with root package name */
        private int f13782b;

        /* renamed from: c  reason: collision with root package name */
        private int f13783c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f13784d;

        /* renamed from: e  reason: collision with root package name */
        private int f13785e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f13786f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f13787g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f13788h;

        /* renamed from: i  reason: collision with root package name */
        private List<UninterpretedOption> f13789i;

        /* renamed from: j  reason: collision with root package name */
        private byte f13790j;

        /* loaded from: classes3.dex */
        public enum CType implements i0.c {
            STRING(0),
            CORD(1),
            STRING_PIECE(2);
            
            public static final int CORD_VALUE = 1;
            public static final int STRING_PIECE_VALUE = 2;
            public static final int STRING_VALUE = 0;
            private final int value;
            private static final i0.d<CType> internalValueMap = new a();
            private static final CType[] VALUES = values();

            /* loaded from: classes3.dex */
            static class a implements i0.d<CType> {
                a() {
                }

                @Override // com.explorestack.protobuf.i0.d
                /* renamed from: a */
                public CType findValueByNumber(int i10) {
                    return CType.forNumber(i10);
                }
            }

            CType(int i10) {
                this.value = i10;
            }

            public static CType forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            return null;
                        }
                        return STRING_PIECE;
                    }
                    return CORD;
                }
                return STRING;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return FieldOptions.getDescriptor().getEnumTypes().get(0);
            }

            public static i0.d<CType> internalGetValueMap() {
                return internalValueMap;
            }

            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.explorestack.protobuf.i0.c
            public final int getNumber() {
                return this.value;
            }

            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(ordinal());
            }

            @Deprecated
            public static CType valueOf(int i10) {
                return forNumber(i10);
            }

            public static CType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes3.dex */
        public enum JSType implements i0.c {
            JS_NORMAL(0),
            JS_STRING(1),
            JS_NUMBER(2);
            
            public static final int JS_NORMAL_VALUE = 0;
            public static final int JS_NUMBER_VALUE = 2;
            public static final int JS_STRING_VALUE = 1;
            private final int value;
            private static final i0.d<JSType> internalValueMap = new a();
            private static final JSType[] VALUES = values();

            /* loaded from: classes3.dex */
            static class a implements i0.d<JSType> {
                a() {
                }

                @Override // com.explorestack.protobuf.i0.d
                /* renamed from: a */
                public JSType findValueByNumber(int i10) {
                    return JSType.forNumber(i10);
                }
            }

            JSType(int i10) {
                this.value = i10;
            }

            public static JSType forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            return null;
                        }
                        return JS_NUMBER;
                    }
                    return JS_STRING;
                }
                return JS_NORMAL;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return FieldOptions.getDescriptor().getEnumTypes().get(1);
            }

            public static i0.d<JSType> internalGetValueMap() {
                return internalValueMap;
            }

            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.explorestack.protobuf.i0.c
            public final int getNumber() {
                return this.value;
            }

            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(ordinal());
            }

            @Deprecated
            public static JSType valueOf(int i10) {
                return forNumber(i10);
            }

            public static JSType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<FieldOptions> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public FieldOptions parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new FieldOptions(nVar, yVar);
            }
        }

        public static b O() {
            return f13780k.toBuilder();
        }

        public static b P(FieldOptions fieldOptions) {
            return f13780k.toBuilder().A(fieldOptions);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.E;
        }

        public static FieldOptions y() {
            return f13780k;
        }

        public boolean A() {
            return this.f13787g;
        }

        public JSType B() {
            JSType valueOf = JSType.valueOf(this.f13785e);
            if (valueOf == null) {
                return JSType.JS_NORMAL;
            }
            return valueOf;
        }

        public boolean C() {
            return this.f13786f;
        }

        public boolean D() {
            return this.f13784d;
        }

        public UninterpretedOption E(int i10) {
            return this.f13789i.get(i10);
        }

        public int F() {
            return this.f13789i.size();
        }

        public List<UninterpretedOption> G() {
            return this.f13789i;
        }

        public boolean H() {
            return this.f13788h;
        }

        public boolean I() {
            if ((this.f13782b & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean J() {
            if ((this.f13782b & 16) != 0) {
                return true;
            }
            return false;
        }

        public boolean K() {
            if ((this.f13782b & 4) != 0) {
                return true;
            }
            return false;
        }

        public boolean L() {
            if ((this.f13782b & 8) != 0) {
                return true;
            }
            return false;
        }

        public boolean M() {
            if ((this.f13782b & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean N() {
            if ((this.f13782b & 32) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: Q */
        public b newBuilderForType() {
            return O();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: S */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: U */
        public b toBuilder() {
            if (this == f13780k) {
                return new b();
            }
            return new b().A(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FieldOptions)) {
                return super.equals(obj);
            }
            FieldOptions fieldOptions = (FieldOptions) obj;
            if (I() != fieldOptions.I()) {
                return false;
            }
            if ((I() && this.f13783c != fieldOptions.f13783c) || M() != fieldOptions.M()) {
                return false;
            }
            if ((M() && D() != fieldOptions.D()) || K() != fieldOptions.K()) {
                return false;
            }
            if ((K() && this.f13785e != fieldOptions.f13785e) || L() != fieldOptions.L()) {
                return false;
            }
            if ((L() && C() != fieldOptions.C()) || J() != fieldOptions.J()) {
                return false;
            }
            if ((J() && A() != fieldOptions.A()) || N() != fieldOptions.N()) {
                return false;
            }
            if ((!N() || H() == fieldOptions.H()) && G().equals(fieldOptions.G()) && this.unknownFields.equals(fieldOptions.unknownFields) && f().equals(fieldOptions.f())) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<FieldOptions> getParserForType() {
            return f13781l;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13782b & 1) != 0) {
                i10 = CodedOutputStream.l(1, this.f13783c);
            } else {
                i10 = 0;
            }
            if ((this.f13782b & 2) != 0) {
                i10 += CodedOutputStream.e(2, this.f13784d);
            }
            if ((this.f13782b & 16) != 0) {
                i10 += CodedOutputStream.e(3, this.f13787g);
            }
            if ((this.f13782b & 8) != 0) {
                i10 += CodedOutputStream.e(5, this.f13786f);
            }
            if ((this.f13782b & 4) != 0) {
                i10 += CodedOutputStream.l(6, this.f13785e);
            }
            if ((this.f13782b & 32) != 0) {
                i10 += CodedOutputStream.e(10, this.f13788h);
            }
            for (int i12 = 0; i12 < this.f13789i.size(); i12++) {
                i10 += CodedOutputStream.G(999, this.f13789i.get(i12));
            }
            int e10 = i10 + e() + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (I()) {
                hashCode = (((hashCode * 37) + 1) * 53) + this.f13783c;
            }
            if (M()) {
                hashCode = (((hashCode * 37) + 2) * 53) + i0.d(D());
            }
            if (K()) {
                hashCode = (((hashCode * 37) + 6) * 53) + this.f13785e;
            }
            if (L()) {
                hashCode = (((hashCode * 37) + 5) * 53) + i0.d(C());
            }
            if (J()) {
                hashCode = (((hashCode * 37) + 3) * 53) + i0.d(A());
            }
            if (N()) {
                hashCode = (((hashCode * 37) + 10) * 53) + i0.d(H());
            }
            if (F() > 0) {
                hashCode = (((hashCode * 37) + 999) * 53) + G().hashCode();
            }
            int hashFields = (AbstractMessage.hashFields(hashCode, f()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashFields;
            return hashFields;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.F.d(FieldOptions.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.ExtendableMessage, com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13790j;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < F(); i10++) {
                if (!E(i10).isInitialized()) {
                    this.f13790j = (byte) 0;
                    return false;
                }
            }
            if (!d()) {
                this.f13790j = (byte) 0;
                return false;
            }
            this.f13790j = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new FieldOptions();
        }

        public CType v() {
            CType valueOf = CType.valueOf(this.f13783c);
            if (valueOf == null) {
                return CType.STRING;
            }
            return valueOf;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            GeneratedMessageV3.ExtendableMessage<MessageType>.a g10 = g();
            if ((this.f13782b & 1) != 0) {
                codedOutputStream.v0(1, this.f13783c);
            }
            if ((this.f13782b & 2) != 0) {
                codedOutputStream.n0(2, this.f13784d);
            }
            if ((this.f13782b & 16) != 0) {
                codedOutputStream.n0(3, this.f13787g);
            }
            if ((this.f13782b & 8) != 0) {
                codedOutputStream.n0(5, this.f13786f);
            }
            if ((this.f13782b & 4) != 0) {
                codedOutputStream.v0(6, this.f13785e);
            }
            if ((this.f13782b & 32) != 0) {
                codedOutputStream.n0(10, this.f13788h);
            }
            for (int i10 = 0; i10 < this.f13789i.size(); i10++) {
                codedOutputStream.L0(999, this.f13789i.get(i10));
            }
            g10.a(536870912, codedOutputStream);
            this.unknownFields.writeTo(codedOutputStream);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: z */
        public FieldOptions mo4630getDefaultInstanceForType() {
            return f13780k;
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.d<FieldOptions, b> implements MessageOrBuilder {

            /* renamed from: b  reason: collision with root package name */
            private int f13791b;

            /* renamed from: c  reason: collision with root package name */
            private int f13792c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f13793d;

            /* renamed from: e  reason: collision with root package name */
            private int f13794e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f13795f;

            /* renamed from: g  reason: collision with root package name */
            private boolean f13796g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f13797h;

            /* renamed from: i  reason: collision with root package name */
            private List<UninterpretedOption> f13798i;

            /* renamed from: j  reason: collision with root package name */
            private p1<UninterpretedOption, UninterpretedOption.b, Object> f13799j;

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    y();
                }
            }

            private void u() {
                if ((this.f13791b & 64) == 0) {
                    this.f13798i = new ArrayList(this.f13798i);
                    this.f13791b |= 64;
                }
            }

            private p1<UninterpretedOption, UninterpretedOption.b, Object> y() {
                boolean z10;
                if (this.f13799j == null) {
                    List<UninterpretedOption> list = this.f13798i;
                    if ((this.f13791b & 64) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13799j = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13798i = null;
                }
                return this.f13799j;
            }

            public b A(FieldOptions fieldOptions) {
                if (fieldOptions == FieldOptions.y()) {
                    return this;
                }
                if (fieldOptions.I()) {
                    D(fieldOptions.v());
                }
                if (fieldOptions.M()) {
                    I(fieldOptions.D());
                }
                if (fieldOptions.K()) {
                    G(fieldOptions.B());
                }
                if (fieldOptions.L()) {
                    H(fieldOptions.C());
                }
                if (fieldOptions.J()) {
                    E(fieldOptions.A());
                }
                if (fieldOptions.N()) {
                    L(fieldOptions.H());
                }
                if (this.f13799j == null) {
                    if (!fieldOptions.f13789i.isEmpty()) {
                        if (this.f13798i.isEmpty()) {
                            this.f13798i = fieldOptions.f13789i;
                            this.f13791b &= -65;
                        } else {
                            u();
                            this.f13798i.addAll(fieldOptions.f13789i);
                        }
                        onChanged();
                    }
                } else if (!fieldOptions.f13789i.isEmpty()) {
                    if (this.f13799j.t()) {
                        this.f13799j.h();
                        p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = null;
                        this.f13799j = null;
                        this.f13798i = fieldOptions.f13789i;
                        this.f13791b &= -65;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = y();
                        }
                        this.f13799j = p1Var;
                    } else {
                        this.f13799j.a(fieldOptions.f13789i);
                    }
                }
                j(fieldOptions);
                mergeUnknownFields(fieldOptions.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: B */
            public b mergeFrom(Message message) {
                if (message instanceof FieldOptions) {
                    return A((FieldOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: C */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            public b D(CType cType) {
                cType.getClass();
                this.f13791b |= 1;
                this.f13792c = cType.getNumber();
                onChanged();
                return this;
            }

            public b E(boolean z10) {
                this.f13791b |= 16;
                this.f13796g = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: F */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            public b G(JSType jSType) {
                jSType.getClass();
                this.f13791b |= 4;
                this.f13794e = jSType.getNumber();
                onChanged();
                return this;
            }

            public b H(boolean z10) {
                this.f13791b |= 8;
                this.f13795f = z10;
                onChanged();
                return this;
            }

            public b I(boolean z10) {
                this.f13791b |= 2;
                this.f13793d = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: J */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: K */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            public b L(boolean z10) {
                this.f13791b |= 32;
                this.f13797h = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.E;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.F.d(FieldOptions.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < x(); i10++) {
                    if (!w(i10).isInitialized()) {
                        return false;
                    }
                }
                if (!i()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: n */
            public b b(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            public FieldOptions build() {
                FieldOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public FieldOptions buildPartial() {
                int i10;
                FieldOptions fieldOptions = new FieldOptions(this);
                int i11 = this.f13791b;
                if ((i11 & 1) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                fieldOptions.f13783c = this.f13792c;
                if ((i11 & 2) != 0) {
                    fieldOptions.f13784d = this.f13793d;
                    i10 |= 2;
                }
                if ((i11 & 4) != 0) {
                    i10 |= 4;
                }
                fieldOptions.f13785e = this.f13794e;
                if ((i11 & 8) != 0) {
                    fieldOptions.f13786f = this.f13795f;
                    i10 |= 8;
                }
                if ((i11 & 16) != 0) {
                    fieldOptions.f13787g = this.f13796g;
                    i10 |= 16;
                }
                if ((i11 & 32) != 0) {
                    fieldOptions.f13788h = this.f13797h;
                    i10 |= 32;
                }
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13799j;
                if (p1Var != null) {
                    fieldOptions.f13789i = p1Var.f();
                } else {
                    if ((this.f13791b & 64) != 0) {
                        this.f13798i = Collections.unmodifiableList(this.f13798i);
                        this.f13791b &= -65;
                    }
                    fieldOptions.f13789i = this.f13798i;
                }
                fieldOptions.f13782b = i10;
                onBuilt();
                return fieldOptions;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: q */
            public b e() {
                super.clear();
                this.f13792c = 0;
                int i10 = this.f13791b;
                this.f13793d = false;
                this.f13794e = 0;
                this.f13795f = false;
                this.f13796g = false;
                this.f13797h = false;
                this.f13791b = i10 & (-64);
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13799j;
                if (p1Var == null) {
                    this.f13798i = Collections.emptyList();
                    this.f13791b &= -65;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: r */
            public b f(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: t */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: v */
            public FieldOptions mo4630getDefaultInstanceForType() {
                return FieldOptions.y();
            }

            public UninterpretedOption w(int i10) {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13799j;
                if (p1Var == null) {
                    return this.f13798i.get(i10);
                }
                return p1Var.n(i10);
            }

            public int x() {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13799j;
                if (p1Var == null) {
                    return this.f13798i.size();
                }
                return p1Var.m();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: z */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.FieldOptions.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$FieldOptions> r1 = com.explorestack.protobuf.DescriptorProtos.FieldOptions.f13781l     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$FieldOptions r3 = (com.explorestack.protobuf.DescriptorProtos.FieldOptions) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.A(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$FieldOptions r4 = (com.explorestack.protobuf.DescriptorProtos.FieldOptions) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.A(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.FieldOptions.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$FieldOptions$b");
            }

            private b() {
                this.f13792c = 0;
                this.f13794e = 0;
                this.f13798i = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13792c = 0;
                this.f13794e = 0;
                this.f13798i = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private FieldOptions(GeneratedMessageV3.d<FieldOptions, ?> dVar) {
            super(dVar);
            this.f13790j = (byte) -1;
        }

        private FieldOptions() {
            this.f13790j = (byte) -1;
            this.f13783c = 0;
            this.f13785e = 0;
            this.f13789i = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private FieldOptions(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 8) {
                                    int t10 = nVar.t();
                                    if (CType.valueOf(t10) == null) {
                                        g10.A(1, t10);
                                    } else {
                                        this.f13782b = 1 | this.f13782b;
                                        this.f13783c = t10;
                                    }
                                } else if (K == 16) {
                                    this.f13782b |= 2;
                                    this.f13784d = nVar.q();
                                } else if (K == 24) {
                                    this.f13782b |= 16;
                                    this.f13787g = nVar.q();
                                } else if (K == 40) {
                                    this.f13782b |= 8;
                                    this.f13786f = nVar.q();
                                } else if (K == 48) {
                                    int t11 = nVar.t();
                                    if (JSType.valueOf(t11) == null) {
                                        g10.A(6, t11);
                                    } else {
                                        this.f13782b |= 4;
                                        this.f13785e = t11;
                                    }
                                } else if (K == 80) {
                                    this.f13782b |= 32;
                                    this.f13788h = nVar.q();
                                } else if (K != 7994) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.f13789i = new ArrayList();
                                        z11 = true;
                                    }
                                    this.f13789i.add(nVar.A(UninterpretedOption.f14015k, yVar));
                                }
                            }
                            z10 = true;
                        } catch (IOException e10) {
                            throw new InvalidProtocolBufferException(e10).setUnfinishedMessage(this);
                        }
                    } catch (InvalidProtocolBufferException e11) {
                        throw e11.setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11 & true) {
                        this.f13789i = Collections.unmodifiableList(this.f13789i);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.f13789i = Collections.unmodifiableList(this.f13789i);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class FileDescriptorProto extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: o  reason: collision with root package name */
        private static final FileDescriptorProto f13800o = new FileDescriptorProto();
        @Deprecated

        /* renamed from: p  reason: collision with root package name */
        public static final j1<FileDescriptorProto> f13801p = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f13802a;

        /* renamed from: b  reason: collision with root package name */
        private volatile Object f13803b;

        /* renamed from: c  reason: collision with root package name */
        private volatile Object f13804c;

        /* renamed from: d  reason: collision with root package name */
        private n0 f13805d;

        /* renamed from: e  reason: collision with root package name */
        private i0.g f13806e;

        /* renamed from: f  reason: collision with root package name */
        private i0.g f13807f;

        /* renamed from: g  reason: collision with root package name */
        private List<DescriptorProto> f13808g;

        /* renamed from: h  reason: collision with root package name */
        private List<EnumDescriptorProto> f13809h;

        /* renamed from: i  reason: collision with root package name */
        private List<ServiceDescriptorProto> f13810i;

        /* renamed from: j  reason: collision with root package name */
        private List<FieldDescriptorProto> f13811j;

        /* renamed from: k  reason: collision with root package name */
        private FileOptions f13812k;

        /* renamed from: l  reason: collision with root package name */
        private SourceCodeInfo f13813l;

        /* renamed from: m  reason: collision with root package name */
        private volatile Object f13814m;

        /* renamed from: n  reason: collision with root package name */
        private byte f13815n;

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<FileDescriptorProto> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public FileDescriptorProto parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new FileDescriptorProto(nVar, yVar);
            }
        }

        public static FileDescriptorProto F() {
            return f13800o;
        }

        public static FileDescriptorProto H0(ByteString byteString, y yVar) throws InvalidProtocolBufferException {
            return f13801p.parseFrom(byteString, yVar);
        }

        public static FileDescriptorProto I0(byte[] bArr) throws InvalidProtocolBufferException {
            return f13801p.parseFrom(bArr);
        }

        public static FileDescriptorProto J0(byte[] bArr, y yVar) throws InvalidProtocolBufferException {
            return f13801p.parseFrom(bArr, yVar);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.f13605c;
        }

        public static b y0() {
            return f13800o.toBuilder();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: B0 */
        public b newBuilderForType() {
            return y0();
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: G */
        public FileDescriptorProto mo4630getDefaultInstanceForType() {
            return f13800o;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: G0 */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        public String H(int i10) {
            return this.f13805d.get(i10);
        }

        public int I() {
            return this.f13805d.size();
        }

        public m1 J() {
            return this.f13805d;
        }

        public EnumDescriptorProto K(int i10) {
            return this.f13809h.get(i10);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: K0 */
        public b toBuilder() {
            if (this == f13800o) {
                return new b();
            }
            return new b().J(this);
        }

        public int L() {
            return this.f13809h.size();
        }

        public List<EnumDescriptorProto> M() {
            return this.f13809h;
        }

        public FieldDescriptorProto N(int i10) {
            return this.f13811j.get(i10);
        }

        public int O() {
            return this.f13811j.size();
        }

        public List<FieldDescriptorProto> P() {
            return this.f13811j;
        }

        public DescriptorProto Q(int i10) {
            return this.f13808g.get(i10);
        }

        public int S() {
            return this.f13808g.size();
        }

        public List<DescriptorProto> U() {
            return this.f13808g;
        }

        public FileOptions V() {
            FileOptions fileOptions = this.f13812k;
            if (fileOptions == null) {
                return FileOptions.a0();
            }
            return fileOptions;
        }

        public String W() {
            Object obj = this.f13804c;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13804c = stringUtf8;
            }
            return stringUtf8;
        }

        public int X(int i10) {
            return this.f13806e.getInt(i10);
        }

        public int Y() {
            return this.f13806e.size();
        }

        public List<Integer> Z() {
            return this.f13806e;
        }

        public ServiceDescriptorProto a0(int i10) {
            return this.f13810i.get(i10);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FileDescriptorProto)) {
                return super.equals(obj);
            }
            FileDescriptorProto fileDescriptorProto = (FileDescriptorProto) obj;
            if (hasName() != fileDescriptorProto.hasName()) {
                return false;
            }
            if ((hasName() && !getName().equals(fileDescriptorProto.getName())) || u0() != fileDescriptorProto.u0()) {
                return false;
            }
            if ((u0() && !W().equals(fileDescriptorProto.W())) || !J().equals(fileDescriptorProto.J()) || !Z().equals(fileDescriptorProto.Z()) || !r0().equals(fileDescriptorProto.r0()) || !U().equals(fileDescriptorProto.U()) || !M().equals(fileDescriptorProto.M()) || !l0().equals(fileDescriptorProto.l0()) || !P().equals(fileDescriptorProto.P()) || s0() != fileDescriptorProto.s0()) {
                return false;
            }
            if ((s0() && !V().equals(fileDescriptorProto.V())) || v0() != fileDescriptorProto.v0()) {
                return false;
            }
            if ((v0() && !o0().equals(fileDescriptorProto.o0())) || x0() != fileDescriptorProto.x0()) {
                return false;
            }
            if ((!x0() || p0().equals(fileDescriptorProto.p0())) && this.unknownFields.equals(fileDescriptorProto.unknownFields)) {
                return true;
            }
            return false;
        }

        public String getName() {
            Object obj = this.f13803b;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13803b = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<FileDescriptorProto> getParserForType() {
            return f13801p;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13802a & 1) != 0) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.f13803b);
            } else {
                i10 = 0;
            }
            if ((this.f13802a & 2) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(2, this.f13804c);
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.f13805d.size(); i13++) {
                i12 += GeneratedMessageV3.computeStringSizeNoTag(this.f13805d.getRaw(i13));
            }
            int size = i10 + i12 + J().size();
            for (int i14 = 0; i14 < this.f13808g.size(); i14++) {
                size += CodedOutputStream.G(4, this.f13808g.get(i14));
            }
            for (int i15 = 0; i15 < this.f13809h.size(); i15++) {
                size += CodedOutputStream.G(5, this.f13809h.get(i15));
            }
            for (int i16 = 0; i16 < this.f13810i.size(); i16++) {
                size += CodedOutputStream.G(6, this.f13810i.get(i16));
            }
            for (int i17 = 0; i17 < this.f13811j.size(); i17++) {
                size += CodedOutputStream.G(7, this.f13811j.get(i17));
            }
            if ((this.f13802a & 4) != 0) {
                size += CodedOutputStream.G(8, V());
            }
            if ((this.f13802a & 8) != 0) {
                size += CodedOutputStream.G(9, o0());
            }
            int i18 = 0;
            for (int i19 = 0; i19 < this.f13806e.size(); i19++) {
                i18 += CodedOutputStream.y(this.f13806e.getInt(i19));
            }
            int size2 = size + i18 + Z().size();
            int i20 = 0;
            for (int i21 = 0; i21 < this.f13807f.size(); i21++) {
                i20 += CodedOutputStream.y(this.f13807f.getInt(i21));
            }
            int size3 = size2 + i20 + r0().size();
            if ((this.f13802a & 16) != 0) {
                size3 += GeneratedMessageV3.computeStringSize(12, this.f13814m);
            }
            int serializedSize = size3 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasName() {
            if ((this.f13802a & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasName()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
            }
            if (u0()) {
                hashCode = (((hashCode * 37) + 2) * 53) + W().hashCode();
            }
            if (I() > 0) {
                hashCode = (((hashCode * 37) + 3) * 53) + J().hashCode();
            }
            if (Y() > 0) {
                hashCode = (((hashCode * 37) + 10) * 53) + Z().hashCode();
            }
            if (q0() > 0) {
                hashCode = (((hashCode * 37) + 11) * 53) + r0().hashCode();
            }
            if (S() > 0) {
                hashCode = (((hashCode * 37) + 4) * 53) + U().hashCode();
            }
            if (L() > 0) {
                hashCode = (((hashCode * 37) + 5) * 53) + M().hashCode();
            }
            if (k0() > 0) {
                hashCode = (((hashCode * 37) + 6) * 53) + l0().hashCode();
            }
            if (O() > 0) {
                hashCode = (((hashCode * 37) + 7) * 53) + P().hashCode();
            }
            if (s0()) {
                hashCode = (((hashCode * 37) + 8) * 53) + V().hashCode();
            }
            if (v0()) {
                hashCode = (((hashCode * 37) + 9) * 53) + o0().hashCode();
            }
            if (x0()) {
                hashCode = (((hashCode * 37) + 12) * 53) + p0().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.f13607d.d(FileDescriptorProto.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13815n;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < S(); i10++) {
                if (!Q(i10).isInitialized()) {
                    this.f13815n = (byte) 0;
                    return false;
                }
            }
            for (int i11 = 0; i11 < L(); i11++) {
                if (!K(i11).isInitialized()) {
                    this.f13815n = (byte) 0;
                    return false;
                }
            }
            for (int i12 = 0; i12 < k0(); i12++) {
                if (!a0(i12).isInitialized()) {
                    this.f13815n = (byte) 0;
                    return false;
                }
            }
            for (int i13 = 0; i13 < O(); i13++) {
                if (!N(i13).isInitialized()) {
                    this.f13815n = (byte) 0;
                    return false;
                }
            }
            if (s0() && !V().isInitialized()) {
                this.f13815n = (byte) 0;
                return false;
            }
            this.f13815n = (byte) 1;
            return true;
        }

        public int k0() {
            return this.f13810i.size();
        }

        public List<ServiceDescriptorProto> l0() {
            return this.f13810i;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new FileDescriptorProto();
        }

        public SourceCodeInfo o0() {
            SourceCodeInfo sourceCodeInfo = this.f13813l;
            if (sourceCodeInfo == null) {
                return SourceCodeInfo.e();
            }
            return sourceCodeInfo;
        }

        public String p0() {
            Object obj = this.f13814m;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13814m = stringUtf8;
            }
            return stringUtf8;
        }

        public int q0() {
            return this.f13807f.size();
        }

        public List<Integer> r0() {
            return this.f13807f;
        }

        public boolean s0() {
            if ((this.f13802a & 4) != 0) {
                return true;
            }
            return false;
        }

        public boolean u0() {
            if ((this.f13802a & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean v0() {
            if ((this.f13802a & 8) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.f13802a & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.f13803b);
            }
            if ((this.f13802a & 2) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.f13804c);
            }
            for (int i10 = 0; i10 < this.f13805d.size(); i10++) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.f13805d.getRaw(i10));
            }
            for (int i11 = 0; i11 < this.f13808g.size(); i11++) {
                codedOutputStream.L0(4, this.f13808g.get(i11));
            }
            for (int i12 = 0; i12 < this.f13809h.size(); i12++) {
                codedOutputStream.L0(5, this.f13809h.get(i12));
            }
            for (int i13 = 0; i13 < this.f13810i.size(); i13++) {
                codedOutputStream.L0(6, this.f13810i.get(i13));
            }
            for (int i14 = 0; i14 < this.f13811j.size(); i14++) {
                codedOutputStream.L0(7, this.f13811j.get(i14));
            }
            if ((this.f13802a & 4) != 0) {
                codedOutputStream.L0(8, V());
            }
            if ((this.f13802a & 8) != 0) {
                codedOutputStream.L0(9, o0());
            }
            for (int i15 = 0; i15 < this.f13806e.size(); i15++) {
                codedOutputStream.H0(10, this.f13806e.getInt(i15));
            }
            for (int i16 = 0; i16 < this.f13807f.size(); i16++) {
                codedOutputStream.H0(11, this.f13807f.getInt(i16));
            }
            if ((this.f13802a & 16) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 12, this.f13814m);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public boolean x0() {
            if ((this.f13802a & 16) != 0) {
                return true;
            }
            return false;
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f13816a;

            /* renamed from: b  reason: collision with root package name */
            private Object f13817b;

            /* renamed from: c  reason: collision with root package name */
            private Object f13818c;

            /* renamed from: d  reason: collision with root package name */
            private n0 f13819d;

            /* renamed from: e  reason: collision with root package name */
            private i0.g f13820e;

            /* renamed from: f  reason: collision with root package name */
            private i0.g f13821f;

            /* renamed from: g  reason: collision with root package name */
            private List<DescriptorProto> f13822g;

            /* renamed from: h  reason: collision with root package name */
            private p1<DescriptorProto, DescriptorProto.b, Object> f13823h;

            /* renamed from: i  reason: collision with root package name */
            private List<EnumDescriptorProto> f13824i;

            /* renamed from: j  reason: collision with root package name */
            private p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> f13825j;

            /* renamed from: k  reason: collision with root package name */
            private List<ServiceDescriptorProto> f13826k;

            /* renamed from: l  reason: collision with root package name */
            private p1<ServiceDescriptorProto, ServiceDescriptorProto.b, Object> f13827l;

            /* renamed from: m  reason: collision with root package name */
            private List<FieldDescriptorProto> f13828m;

            /* renamed from: n  reason: collision with root package name */
            private p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> f13829n;

            /* renamed from: o  reason: collision with root package name */
            private FileOptions f13830o;

            /* renamed from: p  reason: collision with root package name */
            private t1<FileOptions, FileOptions.b, Object> f13831p;

            /* renamed from: q  reason: collision with root package name */
            private SourceCodeInfo f13832q;

            /* renamed from: r  reason: collision with root package name */
            private t1<SourceCodeInfo, SourceCodeInfo.b, Object> f13833r;

            /* renamed from: s  reason: collision with root package name */
            private Object f13834s;

            private t1<FileOptions, FileOptions.b, Object> B() {
                if (this.f13831p == null) {
                    this.f13831p = new t1<>(A(), getParentForChildren(), isClean());
                    this.f13830o = null;
                }
                return this.f13831p;
            }

            private p1<ServiceDescriptorProto, ServiceDescriptorProto.b, Object> E() {
                boolean z10;
                if (this.f13827l == null) {
                    List<ServiceDescriptorProto> list = this.f13826k;
                    if ((this.f13816a & 128) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13827l = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13826k = null;
                }
                return this.f13827l;
            }

            private t1<SourceCodeInfo, SourceCodeInfo.b, Object> G() {
                if (this.f13833r == null) {
                    this.f13833r = new t1<>(F(), getParentForChildren(), isClean());
                    this.f13832q = null;
                }
                return this.f13833r;
            }

            private void j() {
                if ((this.f13816a & 4) == 0) {
                    this.f13819d = new m0(this.f13819d);
                    this.f13816a |= 4;
                }
            }

            private void k() {
                if ((this.f13816a & 64) == 0) {
                    this.f13824i = new ArrayList(this.f13824i);
                    this.f13816a |= 64;
                }
            }

            private void l() {
                if ((this.f13816a & 256) == 0) {
                    this.f13828m = new ArrayList(this.f13828m);
                    this.f13816a |= 256;
                }
            }

            private void m() {
                if ((this.f13816a & 32) == 0) {
                    this.f13822g = new ArrayList(this.f13822g);
                    this.f13816a |= 32;
                }
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    z();
                    t();
                    E();
                    w();
                    B();
                    G();
                }
            }

            private void n() {
                if ((this.f13816a & 8) == 0) {
                    this.f13820e = GeneratedMessageV3.mutableCopy(this.f13820e);
                    this.f13816a |= 8;
                }
            }

            private void o() {
                if ((this.f13816a & 128) == 0) {
                    this.f13826k = new ArrayList(this.f13826k);
                    this.f13816a |= 128;
                }
            }

            private void p() {
                if ((this.f13816a & 16) == 0) {
                    this.f13821f = GeneratedMessageV3.mutableCopy(this.f13821f);
                    this.f13816a |= 16;
                }
            }

            private p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> t() {
                boolean z10;
                if (this.f13825j == null) {
                    List<EnumDescriptorProto> list = this.f13824i;
                    if ((this.f13816a & 64) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13825j = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13824i = null;
                }
                return this.f13825j;
            }

            private p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> w() {
                boolean z10;
                if (this.f13829n == null) {
                    List<FieldDescriptorProto> list = this.f13828m;
                    if ((this.f13816a & 256) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13829n = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13828m = null;
                }
                return this.f13829n;
            }

            private p1<DescriptorProto, DescriptorProto.b, Object> z() {
                boolean z10;
                if (this.f13823h == null) {
                    List<DescriptorProto> list = this.f13822g;
                    if ((this.f13816a & 32) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13823h = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13822g = null;
                }
                return this.f13823h;
            }

            public FileOptions A() {
                t1<FileOptions, FileOptions.b, Object> t1Var = this.f13831p;
                if (t1Var == null) {
                    FileOptions fileOptions = this.f13830o;
                    if (fileOptions == null) {
                        return FileOptions.a0();
                    }
                    return fileOptions;
                }
                return t1Var.e();
            }

            public ServiceDescriptorProto C(int i10) {
                p1<ServiceDescriptorProto, ServiceDescriptorProto.b, Object> p1Var = this.f13827l;
                if (p1Var == null) {
                    return this.f13826k.get(i10);
                }
                return p1Var.n(i10);
            }

            public int D() {
                p1<ServiceDescriptorProto, ServiceDescriptorProto.b, Object> p1Var = this.f13827l;
                if (p1Var == null) {
                    return this.f13826k.size();
                }
                return p1Var.m();
            }

            public SourceCodeInfo F() {
                t1<SourceCodeInfo, SourceCodeInfo.b, Object> t1Var = this.f13833r;
                if (t1Var == null) {
                    SourceCodeInfo sourceCodeInfo = this.f13832q;
                    if (sourceCodeInfo == null) {
                        return SourceCodeInfo.e();
                    }
                    return sourceCodeInfo;
                }
                return t1Var.e();
            }

            public boolean H() {
                if ((this.f13816a & 512) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: I */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.FileDescriptorProto.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$FileDescriptorProto> r1 = com.explorestack.protobuf.DescriptorProtos.FileDescriptorProto.f13801p     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$FileDescriptorProto r3 = (com.explorestack.protobuf.DescriptorProtos.FileDescriptorProto) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.J(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$FileDescriptorProto r4 = (com.explorestack.protobuf.DescriptorProtos.FileDescriptorProto) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.J(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.FileDescriptorProto.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$FileDescriptorProto$b");
            }

            public b J(FileDescriptorProto fileDescriptorProto) {
                p1<DescriptorProto, DescriptorProto.b, Object> p1Var;
                p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> p1Var2;
                p1<ServiceDescriptorProto, ServiceDescriptorProto.b, Object> p1Var3;
                if (fileDescriptorProto == FileDescriptorProto.F()) {
                    return this;
                }
                if (fileDescriptorProto.hasName()) {
                    this.f13816a |= 1;
                    this.f13817b = fileDescriptorProto.f13803b;
                    onChanged();
                }
                if (fileDescriptorProto.u0()) {
                    this.f13816a |= 2;
                    this.f13818c = fileDescriptorProto.f13804c;
                    onChanged();
                }
                if (!fileDescriptorProto.f13805d.isEmpty()) {
                    if (this.f13819d.isEmpty()) {
                        this.f13819d = fileDescriptorProto.f13805d;
                        this.f13816a &= -5;
                    } else {
                        j();
                        this.f13819d.addAll(fileDescriptorProto.f13805d);
                    }
                    onChanged();
                }
                if (!fileDescriptorProto.f13806e.isEmpty()) {
                    if (this.f13820e.isEmpty()) {
                        this.f13820e = fileDescriptorProto.f13806e;
                        this.f13816a &= -9;
                    } else {
                        n();
                        this.f13820e.addAll(fileDescriptorProto.f13806e);
                    }
                    onChanged();
                }
                if (!fileDescriptorProto.f13807f.isEmpty()) {
                    if (this.f13821f.isEmpty()) {
                        this.f13821f = fileDescriptorProto.f13807f;
                        this.f13816a &= -17;
                    } else {
                        p();
                        this.f13821f.addAll(fileDescriptorProto.f13807f);
                    }
                    onChanged();
                }
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var4 = null;
                if (this.f13823h == null) {
                    if (!fileDescriptorProto.f13808g.isEmpty()) {
                        if (this.f13822g.isEmpty()) {
                            this.f13822g = fileDescriptorProto.f13808g;
                            this.f13816a &= -33;
                        } else {
                            m();
                            this.f13822g.addAll(fileDescriptorProto.f13808g);
                        }
                        onChanged();
                    }
                } else if (!fileDescriptorProto.f13808g.isEmpty()) {
                    if (this.f13823h.t()) {
                        this.f13823h.h();
                        this.f13823h = null;
                        this.f13822g = fileDescriptorProto.f13808g;
                        this.f13816a &= -33;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = z();
                        } else {
                            p1Var = null;
                        }
                        this.f13823h = p1Var;
                    } else {
                        this.f13823h.a(fileDescriptorProto.f13808g);
                    }
                }
                if (this.f13825j == null) {
                    if (!fileDescriptorProto.f13809h.isEmpty()) {
                        if (this.f13824i.isEmpty()) {
                            this.f13824i = fileDescriptorProto.f13809h;
                            this.f13816a &= -65;
                        } else {
                            k();
                            this.f13824i.addAll(fileDescriptorProto.f13809h);
                        }
                        onChanged();
                    }
                } else if (!fileDescriptorProto.f13809h.isEmpty()) {
                    if (this.f13825j.t()) {
                        this.f13825j.h();
                        this.f13825j = null;
                        this.f13824i = fileDescriptorProto.f13809h;
                        this.f13816a &= -65;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var2 = t();
                        } else {
                            p1Var2 = null;
                        }
                        this.f13825j = p1Var2;
                    } else {
                        this.f13825j.a(fileDescriptorProto.f13809h);
                    }
                }
                if (this.f13827l == null) {
                    if (!fileDescriptorProto.f13810i.isEmpty()) {
                        if (this.f13826k.isEmpty()) {
                            this.f13826k = fileDescriptorProto.f13810i;
                            this.f13816a &= -129;
                        } else {
                            o();
                            this.f13826k.addAll(fileDescriptorProto.f13810i);
                        }
                        onChanged();
                    }
                } else if (!fileDescriptorProto.f13810i.isEmpty()) {
                    if (this.f13827l.t()) {
                        this.f13827l.h();
                        this.f13827l = null;
                        this.f13826k = fileDescriptorProto.f13810i;
                        this.f13816a &= -129;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var3 = E();
                        } else {
                            p1Var3 = null;
                        }
                        this.f13827l = p1Var3;
                    } else {
                        this.f13827l.a(fileDescriptorProto.f13810i);
                    }
                }
                if (this.f13829n == null) {
                    if (!fileDescriptorProto.f13811j.isEmpty()) {
                        if (this.f13828m.isEmpty()) {
                            this.f13828m = fileDescriptorProto.f13811j;
                            this.f13816a &= -257;
                        } else {
                            l();
                            this.f13828m.addAll(fileDescriptorProto.f13811j);
                        }
                        onChanged();
                    }
                } else if (!fileDescriptorProto.f13811j.isEmpty()) {
                    if (this.f13829n.t()) {
                        this.f13829n.h();
                        this.f13829n = null;
                        this.f13828m = fileDescriptorProto.f13811j;
                        this.f13816a &= -257;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var4 = w();
                        }
                        this.f13829n = p1Var4;
                    } else {
                        this.f13829n.a(fileDescriptorProto.f13811j);
                    }
                }
                if (fileDescriptorProto.s0()) {
                    L(fileDescriptorProto.V());
                }
                if (fileDescriptorProto.v0()) {
                    M(fileDescriptorProto.o0());
                }
                if (fileDescriptorProto.x0()) {
                    this.f13816a |= 2048;
                    this.f13834s = fileDescriptorProto.f13814m;
                    onChanged();
                }
                mergeUnknownFields(fileDescriptorProto.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: K */
            public b mergeFrom(Message message) {
                if (message instanceof FileDescriptorProto) {
                    return J((FileDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public b L(FileOptions fileOptions) {
                FileOptions fileOptions2;
                t1<FileOptions, FileOptions.b, Object> t1Var = this.f13831p;
                if (t1Var == null) {
                    if ((this.f13816a & 512) != 0 && (fileOptions2 = this.f13830o) != null && fileOptions2 != FileOptions.a0()) {
                        this.f13830o = FileOptions.k1(this.f13830o).A(fileOptions).buildPartial();
                    } else {
                        this.f13830o = fileOptions;
                    }
                    onChanged();
                } else {
                    t1Var.g(fileOptions);
                }
                this.f13816a |= 512;
                return this;
            }

            public b M(SourceCodeInfo sourceCodeInfo) {
                SourceCodeInfo sourceCodeInfo2;
                t1<SourceCodeInfo, SourceCodeInfo.b, Object> t1Var = this.f13833r;
                if (t1Var == null) {
                    if ((this.f13816a & 1024) != 0 && (sourceCodeInfo2 = this.f13832q) != null && sourceCodeInfo2 != SourceCodeInfo.e()) {
                        this.f13832q = SourceCodeInfo.j(this.f13832q).n(sourceCodeInfo).buildPartial();
                    } else {
                        this.f13832q = sourceCodeInfo;
                    }
                    onChanged();
                } else {
                    t1Var.g(sourceCodeInfo);
                }
                this.f13816a |= 1024;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: N */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: O */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            public b P(String str) {
                str.getClass();
                this.f13816a |= 1;
                this.f13817b = str;
                onChanged();
                return this;
            }

            public b Q(String str) {
                str.getClass();
                this.f13816a |= 2;
                this.f13818c = str;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: R */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: S */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            public b a(DescriptorProto descriptorProto) {
                p1<DescriptorProto, DescriptorProto.b, Object> p1Var = this.f13823h;
                if (p1Var == null) {
                    descriptorProto.getClass();
                    m();
                    this.f13822g.add(descriptorProto);
                    onChanged();
                } else {
                    p1Var.e(descriptorProto);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public FileDescriptorProto build() {
                FileDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public FileDescriptorProto buildPartial() {
                int i10;
                FileDescriptorProto fileDescriptorProto = new FileDescriptorProto(this);
                int i11 = this.f13816a;
                if ((i11 & 1) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                fileDescriptorProto.f13803b = this.f13817b;
                if ((i11 & 2) != 0) {
                    i10 |= 2;
                }
                fileDescriptorProto.f13804c = this.f13818c;
                if ((this.f13816a & 4) != 0) {
                    this.f13819d = this.f13819d.getUnmodifiableView();
                    this.f13816a &= -5;
                }
                fileDescriptorProto.f13805d = this.f13819d;
                if ((this.f13816a & 8) != 0) {
                    this.f13820e.makeImmutable();
                    this.f13816a &= -9;
                }
                fileDescriptorProto.f13806e = this.f13820e;
                if ((this.f13816a & 16) != 0) {
                    this.f13821f.makeImmutable();
                    this.f13816a &= -17;
                }
                fileDescriptorProto.f13807f = this.f13821f;
                p1<DescriptorProto, DescriptorProto.b, Object> p1Var = this.f13823h;
                if (p1Var != null) {
                    fileDescriptorProto.f13808g = p1Var.f();
                } else {
                    if ((this.f13816a & 32) != 0) {
                        this.f13822g = Collections.unmodifiableList(this.f13822g);
                        this.f13816a &= -33;
                    }
                    fileDescriptorProto.f13808g = this.f13822g;
                }
                p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> p1Var2 = this.f13825j;
                if (p1Var2 != null) {
                    fileDescriptorProto.f13809h = p1Var2.f();
                } else {
                    if ((this.f13816a & 64) != 0) {
                        this.f13824i = Collections.unmodifiableList(this.f13824i);
                        this.f13816a &= -65;
                    }
                    fileDescriptorProto.f13809h = this.f13824i;
                }
                p1<ServiceDescriptorProto, ServiceDescriptorProto.b, Object> p1Var3 = this.f13827l;
                if (p1Var3 != null) {
                    fileDescriptorProto.f13810i = p1Var3.f();
                } else {
                    if ((this.f13816a & 128) != 0) {
                        this.f13826k = Collections.unmodifiableList(this.f13826k);
                        this.f13816a &= -129;
                    }
                    fileDescriptorProto.f13810i = this.f13826k;
                }
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var4 = this.f13829n;
                if (p1Var4 != null) {
                    fileDescriptorProto.f13811j = p1Var4.f();
                } else {
                    if ((this.f13816a & 256) != 0) {
                        this.f13828m = Collections.unmodifiableList(this.f13828m);
                        this.f13816a &= -257;
                    }
                    fileDescriptorProto.f13811j = this.f13828m;
                }
                if ((i11 & 512) != 0) {
                    t1<FileOptions, FileOptions.b, Object> t1Var = this.f13831p;
                    if (t1Var == null) {
                        fileDescriptorProto.f13812k = this.f13830o;
                    } else {
                        fileDescriptorProto.f13812k = t1Var.a();
                    }
                    i10 |= 4;
                }
                if ((i11 & 1024) != 0) {
                    t1<SourceCodeInfo, SourceCodeInfo.b, Object> t1Var2 = this.f13833r;
                    if (t1Var2 == null) {
                        fileDescriptorProto.f13813l = this.f13832q;
                    } else {
                        fileDescriptorProto.f13813l = t1Var2.a();
                    }
                    i10 |= 8;
                }
                if ((i11 & 2048) != 0) {
                    i10 |= 16;
                }
                fileDescriptorProto.f13814m = this.f13834s;
                fileDescriptorProto.f13802a = i10;
                onBuilt();
                return fileDescriptorProto;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clear() {
                super.clear();
                this.f13817b = "";
                int i10 = this.f13816a;
                this.f13818c = "";
                this.f13816a = i10 & (-4);
                this.f13819d = m0.f14459d;
                this.f13816a = i10 & (-8);
                this.f13820e = GeneratedMessageV3.emptyIntList();
                this.f13816a &= -9;
                this.f13821f = GeneratedMessageV3.emptyIntList();
                this.f13816a &= -17;
                p1<DescriptorProto, DescriptorProto.b, Object> p1Var = this.f13823h;
                if (p1Var == null) {
                    this.f13822g = Collections.emptyList();
                    this.f13816a &= -33;
                } else {
                    p1Var.g();
                }
                p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> p1Var2 = this.f13825j;
                if (p1Var2 == null) {
                    this.f13824i = Collections.emptyList();
                    this.f13816a &= -65;
                } else {
                    p1Var2.g();
                }
                p1<ServiceDescriptorProto, ServiceDescriptorProto.b, Object> p1Var3 = this.f13827l;
                if (p1Var3 == null) {
                    this.f13826k = Collections.emptyList();
                    this.f13816a &= -129;
                } else {
                    p1Var3.g();
                }
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var4 = this.f13829n;
                if (p1Var4 == null) {
                    this.f13828m = Collections.emptyList();
                    this.f13816a &= -257;
                } else {
                    p1Var4.g();
                }
                t1<FileOptions, FileOptions.b, Object> t1Var = this.f13831p;
                if (t1Var == null) {
                    this.f13830o = null;
                } else {
                    t1Var.b();
                }
                this.f13816a &= -513;
                t1<SourceCodeInfo, SourceCodeInfo.b, Object> t1Var2 = this.f13833r;
                if (t1Var2 == null) {
                    this.f13832q = null;
                } else {
                    t1Var2.b();
                }
                int i11 = this.f13816a;
                this.f13834s = "";
                this.f13816a = i11 & (-3073);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.f13605c;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: h */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13607d.d(FileDescriptorProto.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < y(); i10++) {
                    if (!x(i10).isInitialized()) {
                        return false;
                    }
                }
                for (int i11 = 0; i11 < s(); i11++) {
                    if (!r(i11).isInitialized()) {
                        return false;
                    }
                }
                for (int i12 = 0; i12 < D(); i12++) {
                    if (!C(i12).isInitialized()) {
                        return false;
                    }
                }
                for (int i13 = 0; i13 < v(); i13++) {
                    if (!u(i13).isInitialized()) {
                        return false;
                    }
                }
                if (H() && !A().isInitialized()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: q */
            public FileDescriptorProto mo4630getDefaultInstanceForType() {
                return FileDescriptorProto.F();
            }

            public EnumDescriptorProto r(int i10) {
                p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> p1Var = this.f13825j;
                if (p1Var == null) {
                    return this.f13824i.get(i10);
                }
                return p1Var.n(i10);
            }

            public int s() {
                p1<EnumDescriptorProto, EnumDescriptorProto.b, Object> p1Var = this.f13825j;
                if (p1Var == null) {
                    return this.f13824i.size();
                }
                return p1Var.m();
            }

            public FieldDescriptorProto u(int i10) {
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var = this.f13829n;
                if (p1Var == null) {
                    return this.f13828m.get(i10);
                }
                return p1Var.n(i10);
            }

            public int v() {
                p1<FieldDescriptorProto, FieldDescriptorProto.b, Object> p1Var = this.f13829n;
                if (p1Var == null) {
                    return this.f13828m.size();
                }
                return p1Var.m();
            }

            public DescriptorProto x(int i10) {
                p1<DescriptorProto, DescriptorProto.b, Object> p1Var = this.f13823h;
                if (p1Var == null) {
                    return this.f13822g.get(i10);
                }
                return p1Var.n(i10);
            }

            public int y() {
                p1<DescriptorProto, DescriptorProto.b, Object> p1Var = this.f13823h;
                if (p1Var == null) {
                    return this.f13822g.size();
                }
                return p1Var.m();
            }

            private b() {
                this.f13817b = "";
                this.f13818c = "";
                this.f13819d = m0.f14459d;
                this.f13820e = GeneratedMessageV3.emptyIntList();
                this.f13821f = GeneratedMessageV3.emptyIntList();
                this.f13822g = Collections.emptyList();
                this.f13824i = Collections.emptyList();
                this.f13826k = Collections.emptyList();
                this.f13828m = Collections.emptyList();
                this.f13834s = "";
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13817b = "";
                this.f13818c = "";
                this.f13819d = m0.f14459d;
                this.f13820e = GeneratedMessageV3.emptyIntList();
                this.f13821f = GeneratedMessageV3.emptyIntList();
                this.f13822g = Collections.emptyList();
                this.f13824i = Collections.emptyList();
                this.f13826k = Collections.emptyList();
                this.f13828m = Collections.emptyList();
                this.f13834s = "";
                maybeForceBuilderInitialization();
            }
        }

        private FileDescriptorProto(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f13815n = (byte) -1;
        }

        private FileDescriptorProto() {
            this.f13815n = (byte) -1;
            this.f13803b = "";
            this.f13804c = "";
            this.f13805d = m0.f14459d;
            this.f13806e = GeneratedMessageV3.emptyIntList();
            this.f13807f = GeneratedMessageV3.emptyIntList();
            this.f13808g = Collections.emptyList();
            this.f13809h = Collections.emptyList();
            this.f13810i = Collections.emptyList();
            this.f13811j = Collections.emptyList();
            this.f13814m = "";
        }

        /* JADX WARN: Multi-variable type inference failed */
        private FileDescriptorProto(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        switch (K) {
                            case 0:
                                break;
                            case 10:
                                ByteString r10 = nVar.r();
                                this.f13802a |= 1;
                                this.f13803b = r10;
                                continue;
                            case 18:
                                ByteString r11 = nVar.r();
                                this.f13802a |= 2;
                                this.f13804c = r11;
                                continue;
                            case 26:
                                ByteString r12 = nVar.r();
                                boolean z12 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z12) {
                                    this.f13805d = new m0();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.f13805d.b(r12);
                                continue;
                            case 34:
                                boolean z13 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z13) {
                                    this.f13808g = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.f13808g.add(nVar.A(DescriptorProto.f13631n, yVar));
                                continue;
                            case 42:
                                boolean z14 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z14) {
                                    this.f13809h = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.f13809h.add(nVar.A(EnumDescriptorProto.f13685i, yVar));
                                continue;
                            case 50:
                                boolean z15 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z15) {
                                    this.f13810i = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.f13810i.add(nVar.A(ServiceDescriptorProto.f13968g, yVar));
                                continue;
                            case 58:
                                boolean z16 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z16) {
                                    this.f13811j = new ArrayList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.f13811j.add(nVar.A(FieldDescriptorProto.f13753o, yVar));
                                continue;
                            case 66:
                                FileOptions.b builder = (this.f13802a & 4) != 0 ? this.f13812k.toBuilder() : null;
                                FileOptions fileOptions = (FileOptions) nVar.A(FileOptions.f13836z, yVar);
                                this.f13812k = fileOptions;
                                if (builder != null) {
                                    builder.A(fileOptions);
                                    this.f13812k = builder.buildPartial();
                                }
                                this.f13802a |= 4;
                                continue;
                            case 74:
                                SourceCodeInfo.b builder2 = (this.f13802a & 8) != 0 ? this.f13813l.toBuilder() : null;
                                SourceCodeInfo sourceCodeInfo = (SourceCodeInfo) nVar.A(SourceCodeInfo.f13991d, yVar);
                                this.f13813l = sourceCodeInfo;
                                if (builder2 != null) {
                                    builder2.n(sourceCodeInfo);
                                    this.f13813l = builder2.buildPartial();
                                }
                                this.f13802a |= 8;
                                continue;
                            case 80:
                                boolean z17 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z17) {
                                    this.f13806e = GeneratedMessageV3.newIntList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.f13806e.addInt(nVar.y());
                                continue;
                            case 82:
                                int p10 = nVar.p(nVar.C());
                                boolean z18 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z18) {
                                    z11 = z11;
                                    if (nVar.d() > 0) {
                                        this.f13806e = GeneratedMessageV3.newIntList();
                                        z11 = (z11 ? 1 : 0) | true;
                                    }
                                }
                                while (nVar.d() > 0) {
                                    this.f13806e.addInt(nVar.y());
                                }
                                nVar.o(p10);
                                continue;
                            case 88:
                                boolean z19 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z19) {
                                    this.f13807f = GeneratedMessageV3.newIntList();
                                    z11 = (z11 ? 1 : 0) | true;
                                }
                                this.f13807f.addInt(nVar.y());
                                continue;
                            case 90:
                                int p11 = nVar.p(nVar.C());
                                boolean z20 = (z11 ? 1 : 0) & true;
                                z11 = z11;
                                if (!z20) {
                                    z11 = z11;
                                    if (nVar.d() > 0) {
                                        this.f13807f = GeneratedMessageV3.newIntList();
                                        z11 = (z11 ? 1 : 0) | true;
                                    }
                                }
                                while (nVar.d() > 0) {
                                    this.f13807f.addInt(nVar.y());
                                }
                                nVar.o(p11);
                                continue;
                            case 98:
                                ByteString r13 = nVar.r();
                                this.f13802a |= 16;
                                this.f13814m = r13;
                                continue;
                            default:
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if ((z11 ? 1 : 0) & true) {
                        this.f13805d = this.f13805d.getUnmodifiableView();
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.f13808g = Collections.unmodifiableList(this.f13808g);
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.f13809h = Collections.unmodifiableList(this.f13809h);
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.f13810i = Collections.unmodifiableList(this.f13810i);
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.f13811j = Collections.unmodifiableList(this.f13811j);
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.f13806e.makeImmutable();
                    }
                    if ((z11 ? 1 : 0) & true) {
                        this.f13807f.makeImmutable();
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if ((z11 ? 1 : 0) & true) {
                this.f13805d = this.f13805d.getUnmodifiableView();
            }
            if ((z11 ? 1 : 0) & true) {
                this.f13808g = Collections.unmodifiableList(this.f13808g);
            }
            if ((z11 ? 1 : 0) & true) {
                this.f13809h = Collections.unmodifiableList(this.f13809h);
            }
            if ((z11 ? 1 : 0) & true) {
                this.f13810i = Collections.unmodifiableList(this.f13810i);
            }
            if ((z11 ? 1 : 0) & true) {
                this.f13811j = Collections.unmodifiableList(this.f13811j);
            }
            if ((z11 ? 1 : 0) & true) {
                this.f13806e.makeImmutable();
            }
            if ((z11 ? 1 : 0) & true) {
                this.f13807f.makeImmutable();
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class FileOptions extends GeneratedMessageV3.ExtendableMessage<FileOptions> implements MessageOrBuilder {

        /* renamed from: y  reason: collision with root package name */
        private static final FileOptions f13835y = new FileOptions();
        @Deprecated

        /* renamed from: z  reason: collision with root package name */
        public static final j1<FileOptions> f13836z = new a();

        /* renamed from: b  reason: collision with root package name */
        private int f13837b;

        /* renamed from: c  reason: collision with root package name */
        private volatile Object f13838c;

        /* renamed from: d  reason: collision with root package name */
        private volatile Object f13839d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f13840e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f13841f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f13842g;

        /* renamed from: h  reason: collision with root package name */
        private int f13843h;

        /* renamed from: i  reason: collision with root package name */
        private volatile Object f13844i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f13845j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f13846k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f13847l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f13848m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f13849n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f13850o;

        /* renamed from: p  reason: collision with root package name */
        private volatile Object f13851p;

        /* renamed from: q  reason: collision with root package name */
        private volatile Object f13852q;

        /* renamed from: r  reason: collision with root package name */
        private volatile Object f13853r;

        /* renamed from: s  reason: collision with root package name */
        private volatile Object f13854s;

        /* renamed from: t  reason: collision with root package name */
        private volatile Object f13855t;

        /* renamed from: u  reason: collision with root package name */
        private volatile Object f13856u;

        /* renamed from: v  reason: collision with root package name */
        private volatile Object f13857v;

        /* renamed from: w  reason: collision with root package name */
        private List<UninterpretedOption> f13858w;

        /* renamed from: x  reason: collision with root package name */
        private byte f13859x;

        /* loaded from: classes3.dex */
        public enum OptimizeMode implements i0.c {
            SPEED(1),
            CODE_SIZE(2),
            LITE_RUNTIME(3);
            
            public static final int CODE_SIZE_VALUE = 2;
            public static final int LITE_RUNTIME_VALUE = 3;
            public static final int SPEED_VALUE = 1;
            private final int value;
            private static final i0.d<OptimizeMode> internalValueMap = new a();
            private static final OptimizeMode[] VALUES = values();

            /* loaded from: classes3.dex */
            static class a implements i0.d<OptimizeMode> {
                a() {
                }

                @Override // com.explorestack.protobuf.i0.d
                /* renamed from: a */
                public OptimizeMode findValueByNumber(int i10) {
                    return OptimizeMode.forNumber(i10);
                }
            }

            OptimizeMode(int i10) {
                this.value = i10;
            }

            public static OptimizeMode forNumber(int i10) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            return null;
                        }
                        return LITE_RUNTIME;
                    }
                    return CODE_SIZE;
                }
                return SPEED;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return FileOptions.getDescriptor().getEnumTypes().get(0);
            }

            public static i0.d<OptimizeMode> internalGetValueMap() {
                return internalValueMap;
            }

            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.explorestack.protobuf.i0.c
            public final int getNumber() {
                return this.value;
            }

            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(ordinal());
            }

            @Deprecated
            public static OptimizeMode valueOf(int i10) {
                return forNumber(i10);
            }

            public static OptimizeMode valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<FileOptions> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public FileOptions parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new FileOptions(nVar, yVar);
            }
        }

        public static FileOptions a0() {
            return f13835y;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.A;
        }

        public static b j1() {
            return f13835y.toBuilder();
        }

        public static b k1(FileOptions fileOptions) {
            return f13835y.toBuilder().A(fileOptions);
        }

        public String B0() {
            Object obj = this.f13854s;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13854s = stringUtf8;
            }
            return stringUtf8;
        }

        public boolean G0() {
            return this.f13848m;
        }

        public String H0() {
            Object obj = this.f13856u;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13856u = stringUtf8;
            }
            return stringUtf8;
        }

        public String I0() {
            Object obj = this.f13855t;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13855t = stringUtf8;
            }
            return stringUtf8;
        }

        public boolean J0() {
            return this.f13847l;
        }

        public String K0() {
            Object obj = this.f13857v;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13857v = stringUtf8;
            }
            return stringUtf8;
        }

        public String L0() {
            Object obj = this.f13853r;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13853r = stringUtf8;
            }
            return stringUtf8;
        }

        public UninterpretedOption M0(int i10) {
            return this.f13858w.get(i10);
        }

        public int N0() {
            return this.f13858w.size();
        }

        public List<UninterpretedOption> O0() {
            return this.f13858w;
        }

        public boolean P0() {
            if ((this.f13837b & 4096) != 0) {
                return true;
            }
            return false;
        }

        public boolean Q0() {
            if ((this.f13837b & 128) != 0) {
                return true;
            }
            return false;
        }

        public boolean R0() {
            if ((this.f13837b & 16384) != 0) {
                return true;
            }
            return false;
        }

        public boolean S0() {
            if ((this.f13837b & 2048) != 0) {
                return true;
            }
            return false;
        }

        public boolean T0() {
            if ((this.f13837b & 64) != 0) {
                return true;
            }
            return false;
        }

        @Deprecated
        public boolean U0() {
            if ((this.f13837b & 8) != 0) {
                return true;
            }
            return false;
        }

        public boolean V0() {
            if ((this.f13837b & 256) != 0) {
                return true;
            }
            return false;
        }

        public boolean W0() {
            if ((this.f13837b & 4) != 0) {
                return true;
            }
            return false;
        }

        public boolean X() {
            return this.f13850o;
        }

        public boolean X0() {
            if ((this.f13837b & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean Y() {
            return this.f13845j;
        }

        public boolean Y0() {
            if ((this.f13837b & 1) != 0) {
                return true;
            }
            return false;
        }

        public String Z() {
            Object obj = this.f13852q;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13852q = stringUtf8;
            }
            return stringUtf8;
        }

        public boolean Z0() {
            if ((this.f13837b & 16) != 0) {
                return true;
            }
            return false;
        }

        public boolean a1() {
            if ((this.f13837b & 8192) != 0) {
                return true;
            }
            return false;
        }

        public boolean b1() {
            if ((this.f13837b & 32) != 0) {
                return true;
            }
            return false;
        }

        public boolean c1() {
            if ((this.f13837b & 65536) != 0) {
                return true;
            }
            return false;
        }

        public boolean d1() {
            if ((this.f13837b & 1024) != 0) {
                return true;
            }
            return false;
        }

        public boolean e1() {
            if ((this.f13837b & 262144) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof FileOptions)) {
                return super.equals(obj);
            }
            FileOptions fileOptions = (FileOptions) obj;
            if (Y0() != fileOptions.Y0()) {
                return false;
            }
            if ((Y0() && !u0().equals(fileOptions.u0())) || X0() != fileOptions.X0()) {
                return false;
            }
            if ((X0() && !s0().equals(fileOptions.s0())) || W0() != fileOptions.W0()) {
                return false;
            }
            if ((W0() && r0() != fileOptions.r0()) || U0() != fileOptions.U0()) {
                return false;
            }
            if ((U0() && p0() != fileOptions.p0()) || Z0() != fileOptions.Z0()) {
                return false;
            }
            if ((Z0() && v0() != fileOptions.v0()) || b1() != fileOptions.b1()) {
                return false;
            }
            if ((b1() && this.f13843h != fileOptions.f13843h) || T0() != fileOptions.T0()) {
                return false;
            }
            if ((T0() && !o0().equals(fileOptions.o0())) || Q0() != fileOptions.Q0()) {
                return false;
            }
            if ((Q0() && Y() != fileOptions.Y()) || V0() != fileOptions.V0()) {
                return false;
            }
            if ((V0() && q0() != fileOptions.q0()) || g1() != fileOptions.g1()) {
                return false;
            }
            if ((g1() && J0() != fileOptions.J0()) || d1() != fileOptions.d1()) {
                return false;
            }
            if ((d1() && G0() != fileOptions.G0()) || S0() != fileOptions.S0()) {
                return false;
            }
            if ((S0() && l0() != fileOptions.l0()) || P0() != fileOptions.P0()) {
                return false;
            }
            if ((P0() && X() != fileOptions.X()) || a1() != fileOptions.a1()) {
                return false;
            }
            if ((a1() && !x0().equals(fileOptions.x0())) || R0() != fileOptions.R0()) {
                return false;
            }
            if ((R0() && !Z().equals(fileOptions.Z())) || i1() != fileOptions.i1()) {
                return false;
            }
            if ((i1() && !L0().equals(fileOptions.L0())) || c1() != fileOptions.c1()) {
                return false;
            }
            if ((c1() && !B0().equals(fileOptions.B0())) || f1() != fileOptions.f1()) {
                return false;
            }
            if ((f1() && !I0().equals(fileOptions.I0())) || e1() != fileOptions.e1()) {
                return false;
            }
            if ((e1() && !H0().equals(fileOptions.H0())) || h1() != fileOptions.h1()) {
                return false;
            }
            if ((!h1() || K0().equals(fileOptions.K0())) && O0().equals(fileOptions.O0()) && this.unknownFields.equals(fileOptions.unknownFields) && f().equals(fileOptions.f())) {
                return true;
            }
            return false;
        }

        public boolean f1() {
            if ((this.f13837b & 131072) != 0) {
                return true;
            }
            return false;
        }

        public boolean g1() {
            if ((this.f13837b & 512) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<FileOptions> getParserForType() {
            return f13836z;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13837b & 1) != 0) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.f13838c);
            } else {
                i10 = 0;
            }
            if ((this.f13837b & 2) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(8, this.f13839d);
            }
            if ((this.f13837b & 32) != 0) {
                i10 += CodedOutputStream.l(9, this.f13843h);
            }
            if ((this.f13837b & 4) != 0) {
                i10 += CodedOutputStream.e(10, this.f13840e);
            }
            if ((this.f13837b & 64) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(11, this.f13844i);
            }
            if ((this.f13837b & 128) != 0) {
                i10 += CodedOutputStream.e(16, this.f13845j);
            }
            if ((this.f13837b & 256) != 0) {
                i10 += CodedOutputStream.e(17, this.f13846k);
            }
            if ((this.f13837b & 512) != 0) {
                i10 += CodedOutputStream.e(18, this.f13847l);
            }
            if ((this.f13837b & 8) != 0) {
                i10 += CodedOutputStream.e(20, this.f13841f);
            }
            if ((this.f13837b & 2048) != 0) {
                i10 += CodedOutputStream.e(23, this.f13849n);
            }
            if ((this.f13837b & 16) != 0) {
                i10 += CodedOutputStream.e(27, this.f13842g);
            }
            if ((this.f13837b & 4096) != 0) {
                i10 += CodedOutputStream.e(31, this.f13850o);
            }
            if ((this.f13837b & 8192) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(36, this.f13851p);
            }
            if ((this.f13837b & 16384) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(37, this.f13852q);
            }
            if ((this.f13837b & 32768) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(39, this.f13853r);
            }
            if ((this.f13837b & 65536) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(40, this.f13854s);
            }
            if ((this.f13837b & 131072) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(41, this.f13855t);
            }
            if ((this.f13837b & 1024) != 0) {
                i10 += CodedOutputStream.e(42, this.f13848m);
            }
            if ((this.f13837b & 262144) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(44, this.f13856u);
            }
            if ((this.f13837b & 524288) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(45, this.f13857v);
            }
            for (int i12 = 0; i12 < this.f13858w.size(); i12++) {
                i10 += CodedOutputStream.G(999, this.f13858w.get(i12));
            }
            int e10 = i10 + e() + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean h1() {
            if ((this.f13837b & 524288) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (Y0()) {
                hashCode = (((hashCode * 37) + 1) * 53) + u0().hashCode();
            }
            if (X0()) {
                hashCode = (((hashCode * 37) + 8) * 53) + s0().hashCode();
            }
            if (W0()) {
                hashCode = (((hashCode * 37) + 10) * 53) + i0.d(r0());
            }
            if (U0()) {
                hashCode = (((hashCode * 37) + 20) * 53) + i0.d(p0());
            }
            if (Z0()) {
                hashCode = (((hashCode * 37) + 27) * 53) + i0.d(v0());
            }
            if (b1()) {
                hashCode = (((hashCode * 37) + 9) * 53) + this.f13843h;
            }
            if (T0()) {
                hashCode = (((hashCode * 37) + 11) * 53) + o0().hashCode();
            }
            if (Q0()) {
                hashCode = (((hashCode * 37) + 16) * 53) + i0.d(Y());
            }
            if (V0()) {
                hashCode = (((hashCode * 37) + 17) * 53) + i0.d(q0());
            }
            if (g1()) {
                hashCode = (((hashCode * 37) + 18) * 53) + i0.d(J0());
            }
            if (d1()) {
                hashCode = (((hashCode * 37) + 42) * 53) + i0.d(G0());
            }
            if (S0()) {
                hashCode = (((hashCode * 37) + 23) * 53) + i0.d(l0());
            }
            if (P0()) {
                hashCode = (((hashCode * 37) + 31) * 53) + i0.d(X());
            }
            if (a1()) {
                hashCode = (((hashCode * 37) + 36) * 53) + x0().hashCode();
            }
            if (R0()) {
                hashCode = (((hashCode * 37) + 37) * 53) + Z().hashCode();
            }
            if (i1()) {
                hashCode = (((hashCode * 37) + 39) * 53) + L0().hashCode();
            }
            if (c1()) {
                hashCode = (((hashCode * 37) + 40) * 53) + B0().hashCode();
            }
            if (f1()) {
                hashCode = (((hashCode * 37) + 41) * 53) + I0().hashCode();
            }
            if (e1()) {
                hashCode = (((hashCode * 37) + 44) * 53) + H0().hashCode();
            }
            if (h1()) {
                hashCode = (((hashCode * 37) + 45) * 53) + K0().hashCode();
            }
            if (N0() > 0) {
                hashCode = (((hashCode * 37) + 999) * 53) + O0().hashCode();
            }
            int hashFields = (AbstractMessage.hashFields(hashCode, f()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashFields;
            return hashFields;
        }

        public boolean i1() {
            if ((this.f13837b & 32768) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.B.d(FileOptions.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.ExtendableMessage, com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13859x;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < N0(); i10++) {
                if (!M0(i10).isInitialized()) {
                    this.f13859x = (byte) 0;
                    return false;
                }
            }
            if (!d()) {
                this.f13859x = (byte) 0;
                return false;
            }
            this.f13859x = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: k0 */
        public FileOptions mo4630getDefaultInstanceForType() {
            return f13835y;
        }

        public boolean l0() {
            return this.f13849n;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: l1 */
        public b newBuilderForType() {
            return j1();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: m1 */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: n1 */
        public b toBuilder() {
            if (this == f13835y) {
                return new b();
            }
            return new b().A(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new FileOptions();
        }

        public String o0() {
            Object obj = this.f13844i;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13844i = stringUtf8;
            }
            return stringUtf8;
        }

        @Deprecated
        public boolean p0() {
            return this.f13841f;
        }

        public boolean q0() {
            return this.f13846k;
        }

        public boolean r0() {
            return this.f13840e;
        }

        public String s0() {
            Object obj = this.f13839d;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13839d = stringUtf8;
            }
            return stringUtf8;
        }

        public String u0() {
            Object obj = this.f13838c;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13838c = stringUtf8;
            }
            return stringUtf8;
        }

        public boolean v0() {
            return this.f13842g;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            GeneratedMessageV3.ExtendableMessage<MessageType>.a g10 = g();
            if ((this.f13837b & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.f13838c);
            }
            if ((this.f13837b & 2) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.f13839d);
            }
            if ((this.f13837b & 32) != 0) {
                codedOutputStream.v0(9, this.f13843h);
            }
            if ((this.f13837b & 4) != 0) {
                codedOutputStream.n0(10, this.f13840e);
            }
            if ((this.f13837b & 64) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.f13844i);
            }
            if ((this.f13837b & 128) != 0) {
                codedOutputStream.n0(16, this.f13845j);
            }
            if ((this.f13837b & 256) != 0) {
                codedOutputStream.n0(17, this.f13846k);
            }
            if ((this.f13837b & 512) != 0) {
                codedOutputStream.n0(18, this.f13847l);
            }
            if ((this.f13837b & 8) != 0) {
                codedOutputStream.n0(20, this.f13841f);
            }
            if ((this.f13837b & 2048) != 0) {
                codedOutputStream.n0(23, this.f13849n);
            }
            if ((this.f13837b & 16) != 0) {
                codedOutputStream.n0(27, this.f13842g);
            }
            if ((this.f13837b & 4096) != 0) {
                codedOutputStream.n0(31, this.f13850o);
            }
            if ((this.f13837b & 8192) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 36, this.f13851p);
            }
            if ((this.f13837b & 16384) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 37, this.f13852q);
            }
            if ((this.f13837b & 32768) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 39, this.f13853r);
            }
            if ((this.f13837b & 65536) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 40, this.f13854s);
            }
            if ((this.f13837b & 131072) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 41, this.f13855t);
            }
            if ((this.f13837b & 1024) != 0) {
                codedOutputStream.n0(42, this.f13848m);
            }
            if ((this.f13837b & 262144) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 44, this.f13856u);
            }
            if ((this.f13837b & 524288) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 45, this.f13857v);
            }
            for (int i10 = 0; i10 < this.f13858w.size(); i10++) {
                codedOutputStream.L0(999, this.f13858w.get(i10));
            }
            g10.a(536870912, codedOutputStream);
            this.unknownFields.writeTo(codedOutputStream);
        }

        public String x0() {
            Object obj = this.f13851p;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13851p = stringUtf8;
            }
            return stringUtf8;
        }

        public OptimizeMode y0() {
            OptimizeMode valueOf = OptimizeMode.valueOf(this.f13843h);
            if (valueOf == null) {
                return OptimizeMode.SPEED;
            }
            return valueOf;
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.d<FileOptions, b> implements MessageOrBuilder {

            /* renamed from: b  reason: collision with root package name */
            private int f13860b;

            /* renamed from: c  reason: collision with root package name */
            private Object f13861c;

            /* renamed from: d  reason: collision with root package name */
            private Object f13862d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f13863e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f13864f;

            /* renamed from: g  reason: collision with root package name */
            private boolean f13865g;

            /* renamed from: h  reason: collision with root package name */
            private int f13866h;

            /* renamed from: i  reason: collision with root package name */
            private Object f13867i;

            /* renamed from: j  reason: collision with root package name */
            private boolean f13868j;

            /* renamed from: k  reason: collision with root package name */
            private boolean f13869k;

            /* renamed from: l  reason: collision with root package name */
            private boolean f13870l;

            /* renamed from: m  reason: collision with root package name */
            private boolean f13871m;

            /* renamed from: n  reason: collision with root package name */
            private boolean f13872n;

            /* renamed from: o  reason: collision with root package name */
            private boolean f13873o;

            /* renamed from: p  reason: collision with root package name */
            private Object f13874p;

            /* renamed from: q  reason: collision with root package name */
            private Object f13875q;

            /* renamed from: r  reason: collision with root package name */
            private Object f13876r;

            /* renamed from: s  reason: collision with root package name */
            private Object f13877s;

            /* renamed from: t  reason: collision with root package name */
            private Object f13878t;

            /* renamed from: u  reason: collision with root package name */
            private Object f13879u;

            /* renamed from: v  reason: collision with root package name */
            private Object f13880v;

            /* renamed from: w  reason: collision with root package name */
            private List<UninterpretedOption> f13881w;

            /* renamed from: x  reason: collision with root package name */
            private p1<UninterpretedOption, UninterpretedOption.b, Object> f13882x;

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    y();
                }
            }

            private void u() {
                if ((this.f13860b & 1048576) == 0) {
                    this.f13881w = new ArrayList(this.f13881w);
                    this.f13860b |= 1048576;
                }
            }

            private p1<UninterpretedOption, UninterpretedOption.b, Object> y() {
                boolean z10;
                if (this.f13882x == null) {
                    List<UninterpretedOption> list = this.f13881w;
                    if ((this.f13860b & 1048576) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13882x = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13881w = null;
                }
                return this.f13882x;
            }

            public b A(FileOptions fileOptions) {
                if (fileOptions == FileOptions.a0()) {
                    return this;
                }
                if (fileOptions.Y0()) {
                    this.f13860b |= 1;
                    this.f13861c = fileOptions.f13838c;
                    onChanged();
                }
                if (fileOptions.X0()) {
                    this.f13860b |= 2;
                    this.f13862d = fileOptions.f13839d;
                    onChanged();
                }
                if (fileOptions.W0()) {
                    J(fileOptions.r0());
                }
                if (fileOptions.U0()) {
                    H(fileOptions.p0());
                }
                if (fileOptions.Z0()) {
                    K(fileOptions.v0());
                }
                if (fileOptions.b1()) {
                    L(fileOptions.y0());
                }
                if (fileOptions.T0()) {
                    this.f13860b |= 64;
                    this.f13867i = fileOptions.f13844i;
                    onChanged();
                }
                if (fileOptions.Q0()) {
                    E(fileOptions.Y());
                }
                if (fileOptions.V0()) {
                    I(fileOptions.q0());
                }
                if (fileOptions.g1()) {
                    N(fileOptions.J0());
                }
                if (fileOptions.d1()) {
                    M(fileOptions.G0());
                }
                if (fileOptions.S0()) {
                    F(fileOptions.l0());
                }
                if (fileOptions.P0()) {
                    D(fileOptions.X());
                }
                if (fileOptions.a1()) {
                    this.f13860b |= 8192;
                    this.f13874p = fileOptions.f13851p;
                    onChanged();
                }
                if (fileOptions.R0()) {
                    this.f13860b |= 16384;
                    this.f13875q = fileOptions.f13852q;
                    onChanged();
                }
                if (fileOptions.i1()) {
                    this.f13860b |= 32768;
                    this.f13876r = fileOptions.f13853r;
                    onChanged();
                }
                if (fileOptions.c1()) {
                    this.f13860b |= 65536;
                    this.f13877s = fileOptions.f13854s;
                    onChanged();
                }
                if (fileOptions.f1()) {
                    this.f13860b |= 131072;
                    this.f13878t = fileOptions.f13855t;
                    onChanged();
                }
                if (fileOptions.e1()) {
                    this.f13860b |= 262144;
                    this.f13879u = fileOptions.f13856u;
                    onChanged();
                }
                if (fileOptions.h1()) {
                    this.f13860b |= 524288;
                    this.f13880v = fileOptions.f13857v;
                    onChanged();
                }
                if (this.f13882x == null) {
                    if (!fileOptions.f13858w.isEmpty()) {
                        if (this.f13881w.isEmpty()) {
                            this.f13881w = fileOptions.f13858w;
                            this.f13860b &= -1048577;
                        } else {
                            u();
                            this.f13881w.addAll(fileOptions.f13858w);
                        }
                        onChanged();
                    }
                } else if (!fileOptions.f13858w.isEmpty()) {
                    if (this.f13882x.t()) {
                        this.f13882x.h();
                        p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = null;
                        this.f13882x = null;
                        this.f13881w = fileOptions.f13858w;
                        this.f13860b = (-1048577) & this.f13860b;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = y();
                        }
                        this.f13882x = p1Var;
                    } else {
                        this.f13882x.a(fileOptions.f13858w);
                    }
                }
                j(fileOptions);
                mergeUnknownFields(fileOptions.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: B */
            public b mergeFrom(Message message) {
                if (message instanceof FileOptions) {
                    return A((FileOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: C */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            public b D(boolean z10) {
                this.f13860b |= 4096;
                this.f13873o = z10;
                onChanged();
                return this;
            }

            public b E(boolean z10) {
                this.f13860b |= 128;
                this.f13868j = z10;
                onChanged();
                return this;
            }

            public b F(boolean z10) {
                this.f13860b |= 2048;
                this.f13872n = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: G */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Deprecated
            public b H(boolean z10) {
                this.f13860b |= 8;
                this.f13864f = z10;
                onChanged();
                return this;
            }

            public b I(boolean z10) {
                this.f13860b |= 256;
                this.f13869k = z10;
                onChanged();
                return this;
            }

            public b J(boolean z10) {
                this.f13860b |= 4;
                this.f13863e = z10;
                onChanged();
                return this;
            }

            public b K(boolean z10) {
                this.f13860b |= 16;
                this.f13865g = z10;
                onChanged();
                return this;
            }

            public b L(OptimizeMode optimizeMode) {
                optimizeMode.getClass();
                this.f13860b |= 32;
                this.f13866h = optimizeMode.getNumber();
                onChanged();
                return this;
            }

            public b M(boolean z10) {
                this.f13860b |= 1024;
                this.f13871m = z10;
                onChanged();
                return this;
            }

            public b N(boolean z10) {
                this.f13860b |= 512;
                this.f13870l = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: O */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: P */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.A;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.B.d(FileOptions.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < x(); i10++) {
                    if (!w(i10).isInitialized()) {
                        return false;
                    }
                }
                if (!i()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: n */
            public b b(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            public FileOptions build() {
                FileOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public FileOptions buildPartial() {
                int i10;
                FileOptions fileOptions = new FileOptions(this);
                int i11 = this.f13860b;
                if ((i11 & 1) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                fileOptions.f13838c = this.f13861c;
                if ((i11 & 2) != 0) {
                    i10 |= 2;
                }
                fileOptions.f13839d = this.f13862d;
                if ((i11 & 4) != 0) {
                    fileOptions.f13840e = this.f13863e;
                    i10 |= 4;
                }
                if ((i11 & 8) != 0) {
                    fileOptions.f13841f = this.f13864f;
                    i10 |= 8;
                }
                if ((i11 & 16) != 0) {
                    fileOptions.f13842g = this.f13865g;
                    i10 |= 16;
                }
                if ((i11 & 32) != 0) {
                    i10 |= 32;
                }
                fileOptions.f13843h = this.f13866h;
                if ((i11 & 64) != 0) {
                    i10 |= 64;
                }
                fileOptions.f13844i = this.f13867i;
                if ((i11 & 128) != 0) {
                    fileOptions.f13845j = this.f13868j;
                    i10 |= 128;
                }
                if ((i11 & 256) != 0) {
                    fileOptions.f13846k = this.f13869k;
                    i10 |= 256;
                }
                if ((i11 & 512) != 0) {
                    fileOptions.f13847l = this.f13870l;
                    i10 |= 512;
                }
                if ((i11 & 1024) != 0) {
                    fileOptions.f13848m = this.f13871m;
                    i10 |= 1024;
                }
                if ((i11 & 2048) != 0) {
                    fileOptions.f13849n = this.f13872n;
                    i10 |= 2048;
                }
                if ((i11 & 4096) != 0) {
                    i10 |= 4096;
                }
                fileOptions.f13850o = this.f13873o;
                if ((i11 & 8192) != 0) {
                    i10 |= 8192;
                }
                fileOptions.f13851p = this.f13874p;
                if ((i11 & 16384) != 0) {
                    i10 |= 16384;
                }
                fileOptions.f13852q = this.f13875q;
                if ((i11 & 32768) != 0) {
                    i10 |= 32768;
                }
                fileOptions.f13853r = this.f13876r;
                if ((i11 & 65536) != 0) {
                    i10 |= 65536;
                }
                fileOptions.f13854s = this.f13877s;
                if ((i11 & 131072) != 0) {
                    i10 |= 131072;
                }
                fileOptions.f13855t = this.f13878t;
                if ((i11 & 262144) != 0) {
                    i10 |= 262144;
                }
                fileOptions.f13856u = this.f13879u;
                if ((i11 & 524288) != 0) {
                    i10 |= 524288;
                }
                fileOptions.f13857v = this.f13880v;
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13882x;
                if (p1Var != null) {
                    fileOptions.f13858w = p1Var.f();
                } else {
                    if ((this.f13860b & 1048576) != 0) {
                        this.f13881w = Collections.unmodifiableList(this.f13881w);
                        this.f13860b &= -1048577;
                    }
                    fileOptions.f13858w = this.f13881w;
                }
                fileOptions.f13837b = i10;
                onBuilt();
                return fileOptions;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: q */
            public b e() {
                super.clear();
                this.f13861c = "";
                int i10 = this.f13860b;
                this.f13862d = "";
                this.f13863e = false;
                this.f13864f = false;
                this.f13865g = false;
                this.f13866h = 1;
                this.f13867i = "";
                this.f13868j = false;
                this.f13869k = false;
                this.f13870l = false;
                this.f13871m = false;
                this.f13872n = false;
                this.f13873o = true;
                this.f13874p = "";
                this.f13875q = "";
                this.f13876r = "";
                this.f13877s = "";
                this.f13878t = "";
                this.f13879u = "";
                this.f13880v = "";
                this.f13860b = (-1048576) & i10;
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13882x;
                if (p1Var == null) {
                    this.f13881w = Collections.emptyList();
                    this.f13860b &= -1048577;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: r */
            public b f(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: t */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: v */
            public FileOptions mo4630getDefaultInstanceForType() {
                return FileOptions.a0();
            }

            public UninterpretedOption w(int i10) {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13882x;
                if (p1Var == null) {
                    return this.f13881w.get(i10);
                }
                return p1Var.n(i10);
            }

            public int x() {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13882x;
                if (p1Var == null) {
                    return this.f13881w.size();
                }
                return p1Var.m();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: z */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.FileOptions.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$FileOptions> r1 = com.explorestack.protobuf.DescriptorProtos.FileOptions.f13836z     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$FileOptions r3 = (com.explorestack.protobuf.DescriptorProtos.FileOptions) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.A(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$FileOptions r4 = (com.explorestack.protobuf.DescriptorProtos.FileOptions) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.A(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.FileOptions.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$FileOptions$b");
            }

            private b() {
                this.f13861c = "";
                this.f13862d = "";
                this.f13866h = 1;
                this.f13867i = "";
                this.f13873o = true;
                this.f13874p = "";
                this.f13875q = "";
                this.f13876r = "";
                this.f13877s = "";
                this.f13878t = "";
                this.f13879u = "";
                this.f13880v = "";
                this.f13881w = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13861c = "";
                this.f13862d = "";
                this.f13866h = 1;
                this.f13867i = "";
                this.f13873o = true;
                this.f13874p = "";
                this.f13875q = "";
                this.f13876r = "";
                this.f13877s = "";
                this.f13878t = "";
                this.f13879u = "";
                this.f13880v = "";
                this.f13881w = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private FileOptions(GeneratedMessageV3.d<FileOptions, ?> dVar) {
            super(dVar);
            this.f13859x = (byte) -1;
        }

        private FileOptions() {
            this.f13859x = (byte) -1;
            this.f13838c = "";
            this.f13839d = "";
            this.f13843h = 1;
            this.f13844i = "";
            this.f13850o = true;
            this.f13851p = "";
            this.f13852q = "";
            this.f13853r = "";
            this.f13854s = "";
            this.f13855t = "";
            this.f13856u = "";
            this.f13857v = "";
            this.f13858w = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1 */
        /* JADX WARN: Type inference failed for: r3v2, types: [boolean] */
        private FileOptions(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            char c10 = 0;
            while (true) {
                ?? r32 = 1048576;
                if (!z10) {
                    try {
                        try {
                            try {
                                int K = nVar.K();
                                switch (K) {
                                    case 0:
                                        break;
                                    case 10:
                                        ByteString r10 = nVar.r();
                                        this.f13837b = 1 | this.f13837b;
                                        this.f13838c = r10;
                                        continue;
                                    case 66:
                                        ByteString r11 = nVar.r();
                                        this.f13837b |= 2;
                                        this.f13839d = r11;
                                        continue;
                                    case 72:
                                        int t10 = nVar.t();
                                        if (OptimizeMode.valueOf(t10) == null) {
                                            g10.A(9, t10);
                                        } else {
                                            this.f13837b |= 32;
                                            this.f13843h = t10;
                                            continue;
                                        }
                                    case 80:
                                        this.f13837b |= 4;
                                        this.f13840e = nVar.q();
                                        continue;
                                    case 90:
                                        ByteString r12 = nVar.r();
                                        this.f13837b |= 64;
                                        this.f13844i = r12;
                                        continue;
                                    case 128:
                                        this.f13837b |= 128;
                                        this.f13845j = nVar.q();
                                        continue;
                                    case 136:
                                        this.f13837b |= 256;
                                        this.f13846k = nVar.q();
                                        continue;
                                    case 144:
                                        this.f13837b |= 512;
                                        this.f13847l = nVar.q();
                                        continue;
                                    case 160:
                                        this.f13837b |= 8;
                                        this.f13841f = nVar.q();
                                        continue;
                                    case 184:
                                        this.f13837b |= 2048;
                                        this.f13849n = nVar.q();
                                        continue;
                                    case 216:
                                        this.f13837b |= 16;
                                        this.f13842g = nVar.q();
                                        continue;
                                    case 248:
                                        this.f13837b |= 4096;
                                        this.f13850o = nVar.q();
                                        continue;
                                    case MediaPlayer.MEDIA_PLAYER_OPTION_HTTP_AUTO_RANGE_OFFSET /* 290 */:
                                        ByteString r13 = nVar.r();
                                        this.f13837b |= 8192;
                                        this.f13851p = r13;
                                        continue;
                                    case MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX /* 298 */:
                                        ByteString r14 = nVar.r();
                                        this.f13837b |= 16384;
                                        this.f13852q = r14;
                                        continue;
                                    case 314:
                                        ByteString r15 = nVar.r();
                                        this.f13837b |= 32768;
                                        this.f13853r = r15;
                                        continue;
                                    case 322:
                                        ByteString r16 = nVar.r();
                                        this.f13837b |= 65536;
                                        this.f13854s = r16;
                                        continue;
                                    case 330:
                                        ByteString r17 = nVar.r();
                                        this.f13837b |= 131072;
                                        this.f13855t = r17;
                                        continue;
                                    case 336:
                                        this.f13837b |= 1024;
                                        this.f13848m = nVar.q();
                                        continue;
                                    case 354:
                                        ByteString r18 = nVar.r();
                                        this.f13837b |= 262144;
                                        this.f13856u = r18;
                                        continue;
                                    case MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_STALL_THRESHOLD /* 362 */:
                                        ByteString r19 = nVar.r();
                                        this.f13837b |= 524288;
                                        this.f13857v = r19;
                                        continue;
                                    case 7994:
                                        if ((c10 & CharCompanionObject.MIN_VALUE) == 0) {
                                            this.f13858w = new ArrayList();
                                            c10 = 0;
                                        }
                                        this.f13858w.add(nVar.A(UninterpretedOption.f14015k, yVar));
                                        continue;
                                    default:
                                        r32 = parseUnknownField(nVar, g10, yVar, K);
                                        if (r32 == 0) {
                                            break;
                                        } else {
                                            continue;
                                        }
                                }
                                z10 = true;
                            } catch (InvalidProtocolBufferException e10) {
                                throw e10.setUnfinishedMessage(this);
                            }
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        if ((c10 & r32) != 0) {
                            this.f13858w = Collections.unmodifiableList(this.f13858w);
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                } else {
                    if ((c10 & CharCompanionObject.MIN_VALUE) != 0) {
                        this.f13858w = Collections.unmodifiableList(this.f13858w);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    return;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class GeneratedCodeInfo extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: c  reason: collision with root package name */
        private static final GeneratedCodeInfo f13883c = new GeneratedCodeInfo();
        @Deprecated

        /* renamed from: d  reason: collision with root package name */
        public static final j1<GeneratedCodeInfo> f13884d = new a();

        /* renamed from: a  reason: collision with root package name */
        private List<Annotation> f13885a;

        /* renamed from: b  reason: collision with root package name */
        private byte f13886b;

        /* loaded from: classes3.dex */
        public static final class Annotation extends GeneratedMessageV3 implements MessageOrBuilder {

            /* renamed from: h  reason: collision with root package name */
            private static final Annotation f13887h = new Annotation();
            @Deprecated

            /* renamed from: i  reason: collision with root package name */
            public static final j1<Annotation> f13888i = new a();

            /* renamed from: a  reason: collision with root package name */
            private int f13889a;

            /* renamed from: b  reason: collision with root package name */
            private i0.g f13890b;

            /* renamed from: c  reason: collision with root package name */
            private int f13891c;

            /* renamed from: d  reason: collision with root package name */
            private volatile Object f13892d;

            /* renamed from: e  reason: collision with root package name */
            private int f13893e;

            /* renamed from: f  reason: collision with root package name */
            private int f13894f;

            /* renamed from: g  reason: collision with root package name */
            private byte f13895g;

            /* loaded from: classes3.dex */
            static class a extends com.explorestack.protobuf.b<Annotation> {
                a() {
                }

                @Override // com.explorestack.protobuf.j1
                /* renamed from: a */
                public Annotation parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Annotation(nVar, yVar);
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.f13602a0;
            }

            public static Annotation k() {
                return f13887h;
            }

            public static b z() {
                return f13887h.toBuilder();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: A */
            public b newBuilderForType() {
                return z();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            /* renamed from: B */
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: C */
            public b toBuilder() {
                if (this == f13887h) {
                    return new b();
                }
                return new b().m(this);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Annotation)) {
                    return super.equals(obj);
                }
                Annotation annotation = (Annotation) obj;
                if (!s().equals(annotation.s()) || y() != annotation.y()) {
                    return false;
                }
                if ((y() && !t().equals(annotation.t())) || u() != annotation.u()) {
                    return false;
                }
                if ((u() && j() != annotation.j()) || v() != annotation.v()) {
                    return false;
                }
                if ((!v() || q() == annotation.q()) && this.unknownFields.equals(annotation.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Annotation> getParserForType() {
                return f13888i;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                int i12 = 0;
                for (int i13 = 0; i13 < this.f13890b.size(); i13++) {
                    i12 += CodedOutputStream.y(this.f13890b.getInt(i13));
                }
                if (!s().isEmpty()) {
                    i10 = i12 + 1 + CodedOutputStream.y(i12);
                } else {
                    i10 = i12;
                }
                this.f13891c = i12;
                if ((this.f13889a & 1) != 0) {
                    i10 += GeneratedMessageV3.computeStringSize(2, this.f13892d);
                }
                if ((this.f13889a & 2) != 0) {
                    i10 += CodedOutputStream.x(3, this.f13893e);
                }
                if ((this.f13889a & 4) != 0) {
                    i10 += CodedOutputStream.x(4, this.f13894f);
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (r() > 0) {
                    hashCode = (((hashCode * 37) + 1) * 53) + s().hashCode();
                }
                if (y()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + t().hashCode();
                }
                if (u()) {
                    hashCode = (((hashCode * 37) + 3) * 53) + j();
                }
                if (v()) {
                    hashCode = (((hashCode * 37) + 4) * 53) + q();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13604b0.d(Annotation.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.f13895g;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.f13895g = (byte) 1;
                return true;
            }

            public int j() {
                return this.f13893e;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: n */
            public Annotation mo4630getDefaultInstanceForType() {
                return f13887h;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new Annotation();
            }

            public int q() {
                return this.f13894f;
            }

            public int r() {
                return this.f13890b.size();
            }

            public List<Integer> s() {
                return this.f13890b;
            }

            public String t() {
                Object obj = this.f13892d;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.f13892d = stringUtf8;
                }
                return stringUtf8;
            }

            public boolean u() {
                if ((this.f13889a & 2) != 0) {
                    return true;
                }
                return false;
            }

            public boolean v() {
                if ((this.f13889a & 4) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                if (s().size() > 0) {
                    codedOutputStream.d1(10);
                    codedOutputStream.d1(this.f13891c);
                }
                for (int i10 = 0; i10 < this.f13890b.size(); i10++) {
                    codedOutputStream.I0(this.f13890b.getInt(i10));
                }
                if ((this.f13889a & 1) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.f13892d);
                }
                if ((this.f13889a & 2) != 0) {
                    codedOutputStream.H0(3, this.f13893e);
                }
                if ((this.f13889a & 4) != 0) {
                    codedOutputStream.H0(4, this.f13894f);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            public boolean y() {
                if ((this.f13889a & 1) != 0) {
                    return true;
                }
                return false;
            }

            /* loaded from: classes3.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

                /* renamed from: a  reason: collision with root package name */
                private int f13896a;

                /* renamed from: b  reason: collision with root package name */
                private i0.g f13897b;

                /* renamed from: c  reason: collision with root package name */
                private Object f13898c;

                /* renamed from: d  reason: collision with root package name */
                private int f13899d;

                /* renamed from: e  reason: collision with root package name */
                private int f13900e;

                private void j() {
                    if ((this.f13896a & 1) == 0) {
                        this.f13897b = GeneratedMessageV3.mutableCopy(this.f13897b);
                        this.f13896a |= 1;
                    }
                }

                private void maybeForceBuilderInitialization() {
                    boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: a */
                public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: b */
                public Annotation build() {
                    Annotation buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: c */
                public Annotation buildPartial() {
                    int i10;
                    Annotation annotation = new Annotation(this);
                    int i11 = this.f13896a;
                    if ((i11 & 1) != 0) {
                        this.f13897b.makeImmutable();
                        this.f13896a &= -2;
                    }
                    annotation.f13890b = this.f13897b;
                    if ((i11 & 2) != 0) {
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    annotation.f13892d = this.f13898c;
                    if ((i11 & 4) != 0) {
                        annotation.f13893e = this.f13899d;
                        i10 |= 2;
                    }
                    if ((i11 & 8) != 0) {
                        annotation.f13894f = this.f13900e;
                        i10 |= 4;
                    }
                    annotation.f13889a = i10;
                    onBuilt();
                    return annotation;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: e */
                public b clear() {
                    super.clear();
                    this.f13897b = GeneratedMessageV3.emptyIntList();
                    int i10 = this.f13896a;
                    this.f13898c = "";
                    this.f13899d = 0;
                    this.f13900e = 0;
                    this.f13896a = i10 & (-16);
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: f */
                public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (b) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: g */
                public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (b) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return DescriptorProtos.f13602a0;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: i */
                public b mo4628clone() {
                    return (b) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return DescriptorProtos.f13604b0.d(Annotation.class, b.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: k */
                public Annotation mo4630getDefaultInstanceForType() {
                    return Annotation.k();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: l */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.DescriptorProtos.GeneratedCodeInfo.Annotation.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$GeneratedCodeInfo$Annotation> r1 = com.explorestack.protobuf.DescriptorProtos.GeneratedCodeInfo.Annotation.f13888i     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        com.explorestack.protobuf.DescriptorProtos$GeneratedCodeInfo$Annotation r3 = (com.explorestack.protobuf.DescriptorProtos.GeneratedCodeInfo.Annotation) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        if (r3 == 0) goto Le
                        r2.m(r3)
                    Le:
                        return r2
                    Lf:
                        r3 = move-exception
                        goto L1f
                    L11:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                        com.explorestack.protobuf.DescriptorProtos$GeneratedCodeInfo$Annotation r4 = (com.explorestack.protobuf.DescriptorProtos.GeneratedCodeInfo.Annotation) r4     // Catch: java.lang.Throwable -> Lf
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                        throw r3     // Catch: java.lang.Throwable -> L1d
                    L1d:
                        r3 = move-exception
                        r0 = r4
                    L1f:
                        if (r0 == 0) goto L24
                        r2.m(r0)
                    L24:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.GeneratedCodeInfo.Annotation.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$GeneratedCodeInfo$Annotation$b");
                }

                public b m(Annotation annotation) {
                    if (annotation == Annotation.k()) {
                        return this;
                    }
                    if (!annotation.f13890b.isEmpty()) {
                        if (this.f13897b.isEmpty()) {
                            this.f13897b = annotation.f13890b;
                            this.f13896a &= -2;
                        } else {
                            j();
                            this.f13897b.addAll(annotation.f13890b);
                        }
                        onChanged();
                    }
                    if (annotation.y()) {
                        this.f13896a |= 2;
                        this.f13898c = annotation.f13892d;
                        onChanged();
                    }
                    if (annotation.u()) {
                        p(annotation.j());
                    }
                    if (annotation.v()) {
                        q(annotation.q());
                    }
                    mergeUnknownFields(annotation.unknownFields);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: n */
                public b mergeFrom(Message message) {
                    if (message instanceof Annotation) {
                        return m((Annotation) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: o */
                public final b mergeUnknownFields(j2 j2Var) {
                    return (b) super.mergeUnknownFields(j2Var);
                }

                public b p(int i10) {
                    this.f13896a |= 4;
                    this.f13899d = i10;
                    onChanged();
                    return this;
                }

                public b q(int i10) {
                    this.f13896a |= 8;
                    this.f13900e = i10;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: r */
                public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.setField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: s */
                public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: t */
                public final b setUnknownFields(j2 j2Var) {
                    return (b) super.setUnknownFields(j2Var);
                }

                private b() {
                    this.f13897b = GeneratedMessageV3.emptyIntList();
                    this.f13898c = "";
                    maybeForceBuilderInitialization();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f13897b = GeneratedMessageV3.emptyIntList();
                    this.f13898c = "";
                    maybeForceBuilderInitialization();
                }
            }

            private Annotation(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.f13891c = -1;
                this.f13895g = (byte) -1;
            }

            private Annotation() {
                this.f13891c = -1;
                this.f13895g = (byte) -1;
                this.f13890b = GeneratedMessageV3.emptyIntList();
                this.f13892d = "";
            }

            private Annotation(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                boolean z11 = false;
                while (!z10) {
                    try {
                        try {
                            try {
                                int K = nVar.K();
                                if (K != 0) {
                                    if (K == 8) {
                                        if (!z11) {
                                            this.f13890b = GeneratedMessageV3.newIntList();
                                            z11 = true;
                                        }
                                        this.f13890b.addInt(nVar.y());
                                    } else if (K == 10) {
                                        int p10 = nVar.p(nVar.C());
                                        if (!z11 && nVar.d() > 0) {
                                            this.f13890b = GeneratedMessageV3.newIntList();
                                            z11 = true;
                                        }
                                        while (nVar.d() > 0) {
                                            this.f13890b.addInt(nVar.y());
                                        }
                                        nVar.o(p10);
                                    } else if (K == 18) {
                                        ByteString r10 = nVar.r();
                                        this.f13889a = 1 | this.f13889a;
                                        this.f13892d = r10;
                                    } else if (K == 24) {
                                        this.f13889a |= 2;
                                        this.f13893e = nVar.y();
                                    } else if (K != 32) {
                                        if (!parseUnknownField(nVar, g10, yVar, K)) {
                                        }
                                    } else {
                                        this.f13889a |= 4;
                                        this.f13894f = nVar.y();
                                    }
                                }
                                z10 = true;
                            } catch (InvalidProtocolBufferException e10) {
                                throw e10.setUnfinishedMessage(this);
                            }
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        if (z11) {
                            this.f13890b.makeImmutable();
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if (z11) {
                    this.f13890b.makeImmutable();
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }
        }

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<GeneratedCodeInfo> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public GeneratedCodeInfo parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new GeneratedCodeInfo(nVar, yVar);
            }
        }

        public static GeneratedCodeInfo g() {
            return f13883c;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.Y;
        }

        public static b i() {
            return f13883c.toBuilder();
        }

        public static b j(GeneratedCodeInfo generatedCodeInfo) {
            return f13883c.toBuilder().n(generatedCodeInfo);
        }

        public int e() {
            return this.f13885a.size();
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof GeneratedCodeInfo)) {
                return super.equals(obj);
            }
            GeneratedCodeInfo generatedCodeInfo = (GeneratedCodeInfo) obj;
            if (f().equals(generatedCodeInfo.f()) && this.unknownFields.equals(generatedCodeInfo.unknownFields)) {
                return true;
            }
            return false;
        }

        public List<Annotation> f() {
            return this.f13885a;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<GeneratedCodeInfo> getParserForType() {
            return f13884d;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.f13885a.size(); i12++) {
                i11 += CodedOutputStream.G(1, this.f13885a.get(i12));
            }
            int serializedSize = i11 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: h */
        public GeneratedCodeInfo mo4630getDefaultInstanceForType() {
            return f13883c;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (e() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + f().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.Z.d(GeneratedCodeInfo.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13886b;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.f13886b = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: k */
        public b newBuilderForType() {
            return i();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: n */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new GeneratedCodeInfo();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: q */
        public b toBuilder() {
            if (this == f13883c) {
                return new b();
            }
            return new b().n(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i10 = 0; i10 < this.f13885a.size(); i10++) {
                codedOutputStream.L0(1, this.f13885a.get(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f13901a;

            /* renamed from: b  reason: collision with root package name */
            private List<Annotation> f13902b;

            /* renamed from: c  reason: collision with root package name */
            private p1<Annotation, Annotation.b, Object> f13903c;

            private void j() {
                if ((this.f13901a & 1) == 0) {
                    this.f13902b = new ArrayList(this.f13902b);
                    this.f13901a |= 1;
                }
            }

            private p1<Annotation, Annotation.b, Object> k() {
                if (this.f13903c == null) {
                    List<Annotation> list = this.f13902b;
                    boolean z10 = true;
                    if ((this.f13901a & 1) == 0) {
                        z10 = false;
                    }
                    this.f13903c = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13902b = null;
                }
                return this.f13903c;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    k();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: a */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public GeneratedCodeInfo build() {
                GeneratedCodeInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public GeneratedCodeInfo buildPartial() {
                GeneratedCodeInfo generatedCodeInfo = new GeneratedCodeInfo(this);
                int i10 = this.f13901a;
                p1<Annotation, Annotation.b, Object> p1Var = this.f13903c;
                if (p1Var != null) {
                    generatedCodeInfo.f13885a = p1Var.f();
                } else {
                    if ((i10 & 1) != 0) {
                        this.f13902b = Collections.unmodifiableList(this.f13902b);
                        this.f13901a &= -2;
                    }
                    generatedCodeInfo.f13885a = this.f13902b;
                }
                onBuilt();
                return generatedCodeInfo;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public b clear() {
                super.clear();
                p1<Annotation, Annotation.b, Object> p1Var = this.f13903c;
                if (p1Var == null) {
                    this.f13902b = Collections.emptyList();
                    this.f13901a &= -2;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.Y;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.Z.d(GeneratedCodeInfo.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: l */
            public GeneratedCodeInfo mo4630getDefaultInstanceForType() {
                return GeneratedCodeInfo.g();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: m */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.GeneratedCodeInfo.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$GeneratedCodeInfo> r1 = com.explorestack.protobuf.DescriptorProtos.GeneratedCodeInfo.f13884d     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$GeneratedCodeInfo r3 = (com.explorestack.protobuf.DescriptorProtos.GeneratedCodeInfo) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.n(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$GeneratedCodeInfo r4 = (com.explorestack.protobuf.DescriptorProtos.GeneratedCodeInfo) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.n(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.GeneratedCodeInfo.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$GeneratedCodeInfo$b");
            }

            public b n(GeneratedCodeInfo generatedCodeInfo) {
                if (generatedCodeInfo == GeneratedCodeInfo.g()) {
                    return this;
                }
                if (this.f13903c == null) {
                    if (!generatedCodeInfo.f13885a.isEmpty()) {
                        if (this.f13902b.isEmpty()) {
                            this.f13902b = generatedCodeInfo.f13885a;
                            this.f13901a &= -2;
                        } else {
                            j();
                            this.f13902b.addAll(generatedCodeInfo.f13885a);
                        }
                        onChanged();
                    }
                } else if (!generatedCodeInfo.f13885a.isEmpty()) {
                    if (this.f13903c.t()) {
                        this.f13903c.h();
                        p1<Annotation, Annotation.b, Object> p1Var = null;
                        this.f13903c = null;
                        this.f13902b = generatedCodeInfo.f13885a;
                        this.f13901a &= -2;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = k();
                        }
                        this.f13903c = p1Var;
                    } else {
                        this.f13903c.a(generatedCodeInfo.f13885a);
                    }
                }
                mergeUnknownFields(generatedCodeInfo.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            public b mergeFrom(Message message) {
                if (message instanceof GeneratedCodeInfo) {
                    return n((GeneratedCodeInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: q */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: r */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            private b() {
                this.f13902b = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13902b = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private GeneratedCodeInfo(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f13886b = (byte) -1;
        }

        private GeneratedCodeInfo() {
            this.f13886b = (byte) -1;
            this.f13885a = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private GeneratedCodeInfo(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K != 10) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    if (!z11) {
                                        this.f13885a = new ArrayList();
                                        z11 = true;
                                    }
                                    this.f13885a.add(nVar.A(Annotation.f13888i, yVar));
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11) {
                        this.f13885a = Collections.unmodifiableList(this.f13885a);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11) {
                this.f13885a = Collections.unmodifiableList(this.f13885a);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class MessageOptions extends GeneratedMessageV3.ExtendableMessage<MessageOptions> implements MessageOrBuilder {

        /* renamed from: i  reason: collision with root package name */
        private static final MessageOptions f13904i = new MessageOptions();
        @Deprecated

        /* renamed from: j  reason: collision with root package name */
        public static final j1<MessageOptions> f13905j = new a();

        /* renamed from: b  reason: collision with root package name */
        private int f13906b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f13907c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f13908d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f13909e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f13910f;

        /* renamed from: g  reason: collision with root package name */
        private List<UninterpretedOption> f13911g;

        /* renamed from: h  reason: collision with root package name */
        private byte f13912h;

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<MessageOptions> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public MessageOptions parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new MessageOptions(nVar, yVar);
            }
        }

        public static b I() {
            return f13904i.toBuilder();
        }

        public static b J(MessageOptions messageOptions) {
            return f13904i.toBuilder().A(messageOptions);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.C;
        }

        public static MessageOptions t() {
            return f13904i;
        }

        public boolean A() {
            return this.f13908d;
        }

        public UninterpretedOption B(int i10) {
            return this.f13911g.get(i10);
        }

        public int C() {
            return this.f13911g.size();
        }

        public List<UninterpretedOption> D() {
            return this.f13911g;
        }

        public boolean E() {
            if ((this.f13906b & 4) != 0) {
                return true;
            }
            return false;
        }

        public boolean F() {
            if ((this.f13906b & 8) != 0) {
                return true;
            }
            return false;
        }

        public boolean G() {
            if ((this.f13906b & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean H() {
            if ((this.f13906b & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: K */
        public b newBuilderForType() {
            return I();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: L */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: M */
        public b toBuilder() {
            if (this == f13904i) {
                return new b();
            }
            return new b().A(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MessageOptions)) {
                return super.equals(obj);
            }
            MessageOptions messageOptions = (MessageOptions) obj;
            if (G() != messageOptions.G()) {
                return false;
            }
            if ((G() && z() != messageOptions.z()) || H() != messageOptions.H()) {
                return false;
            }
            if ((H() && A() != messageOptions.A()) || E() != messageOptions.E()) {
                return false;
            }
            if ((E() && v() != messageOptions.v()) || F() != messageOptions.F()) {
                return false;
            }
            if ((!F() || y() == messageOptions.y()) && D().equals(messageOptions.D()) && this.unknownFields.equals(messageOptions.unknownFields) && f().equals(messageOptions.f())) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<MessageOptions> getParserForType() {
            return f13905j;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13906b & 1) != 0) {
                i10 = CodedOutputStream.e(1, this.f13907c);
            } else {
                i10 = 0;
            }
            if ((this.f13906b & 2) != 0) {
                i10 += CodedOutputStream.e(2, this.f13908d);
            }
            if ((this.f13906b & 4) != 0) {
                i10 += CodedOutputStream.e(3, this.f13909e);
            }
            if ((this.f13906b & 8) != 0) {
                i10 += CodedOutputStream.e(7, this.f13910f);
            }
            for (int i12 = 0; i12 < this.f13911g.size(); i12++) {
                i10 += CodedOutputStream.G(999, this.f13911g.get(i12));
            }
            int e10 = i10 + e() + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (G()) {
                hashCode = (((hashCode * 37) + 1) * 53) + i0.d(z());
            }
            if (H()) {
                hashCode = (((hashCode * 37) + 2) * 53) + i0.d(A());
            }
            if (E()) {
                hashCode = (((hashCode * 37) + 3) * 53) + i0.d(v());
            }
            if (F()) {
                hashCode = (((hashCode * 37) + 7) * 53) + i0.d(y());
            }
            if (C() > 0) {
                hashCode = (((hashCode * 37) + 999) * 53) + D().hashCode();
            }
            int hashFields = (AbstractMessage.hashFields(hashCode, f()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashFields;
            return hashFields;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.D.d(MessageOptions.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.ExtendableMessage, com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13912h;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < C(); i10++) {
                if (!B(i10).isInitialized()) {
                    this.f13912h = (byte) 0;
                    return false;
                }
            }
            if (!d()) {
                this.f13912h = (byte) 0;
                return false;
            }
            this.f13912h = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new MessageOptions();
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: u */
        public MessageOptions mo4630getDefaultInstanceForType() {
            return f13904i;
        }

        public boolean v() {
            return this.f13909e;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            GeneratedMessageV3.ExtendableMessage<MessageType>.a g10 = g();
            if ((this.f13906b & 1) != 0) {
                codedOutputStream.n0(1, this.f13907c);
            }
            if ((this.f13906b & 2) != 0) {
                codedOutputStream.n0(2, this.f13908d);
            }
            if ((this.f13906b & 4) != 0) {
                codedOutputStream.n0(3, this.f13909e);
            }
            if ((this.f13906b & 8) != 0) {
                codedOutputStream.n0(7, this.f13910f);
            }
            for (int i10 = 0; i10 < this.f13911g.size(); i10++) {
                codedOutputStream.L0(999, this.f13911g.get(i10));
            }
            g10.a(536870912, codedOutputStream);
            this.unknownFields.writeTo(codedOutputStream);
        }

        public boolean y() {
            return this.f13910f;
        }

        public boolean z() {
            return this.f13907c;
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.d<MessageOptions, b> implements MessageOrBuilder {

            /* renamed from: b  reason: collision with root package name */
            private int f13913b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f13914c;

            /* renamed from: d  reason: collision with root package name */
            private boolean f13915d;

            /* renamed from: e  reason: collision with root package name */
            private boolean f13916e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f13917f;

            /* renamed from: g  reason: collision with root package name */
            private List<UninterpretedOption> f13918g;

            /* renamed from: h  reason: collision with root package name */
            private p1<UninterpretedOption, UninterpretedOption.b, Object> f13919h;

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    y();
                }
            }

            private void u() {
                if ((this.f13913b & 16) == 0) {
                    this.f13918g = new ArrayList(this.f13918g);
                    this.f13913b |= 16;
                }
            }

            private p1<UninterpretedOption, UninterpretedOption.b, Object> y() {
                boolean z10;
                if (this.f13919h == null) {
                    List<UninterpretedOption> list = this.f13918g;
                    if ((this.f13913b & 16) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13919h = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13918g = null;
                }
                return this.f13919h;
            }

            public b A(MessageOptions messageOptions) {
                if (messageOptions == MessageOptions.t()) {
                    return this;
                }
                if (messageOptions.G()) {
                    G(messageOptions.z());
                }
                if (messageOptions.H()) {
                    H(messageOptions.A());
                }
                if (messageOptions.E()) {
                    D(messageOptions.v());
                }
                if (messageOptions.F()) {
                    F(messageOptions.y());
                }
                if (this.f13919h == null) {
                    if (!messageOptions.f13911g.isEmpty()) {
                        if (this.f13918g.isEmpty()) {
                            this.f13918g = messageOptions.f13911g;
                            this.f13913b &= -17;
                        } else {
                            u();
                            this.f13918g.addAll(messageOptions.f13911g);
                        }
                        onChanged();
                    }
                } else if (!messageOptions.f13911g.isEmpty()) {
                    if (this.f13919h.t()) {
                        this.f13919h.h();
                        p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = null;
                        this.f13919h = null;
                        this.f13918g = messageOptions.f13911g;
                        this.f13913b &= -17;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = y();
                        }
                        this.f13919h = p1Var;
                    } else {
                        this.f13919h.a(messageOptions.f13911g);
                    }
                }
                j(messageOptions);
                mergeUnknownFields(messageOptions.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: B */
            public b mergeFrom(Message message) {
                if (message instanceof MessageOptions) {
                    return A((MessageOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: C */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            public b D(boolean z10) {
                this.f13913b |= 4;
                this.f13916e = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: E */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            public b F(boolean z10) {
                this.f13913b |= 8;
                this.f13917f = z10;
                onChanged();
                return this;
            }

            public b G(boolean z10) {
                this.f13913b |= 1;
                this.f13914c = z10;
                onChanged();
                return this;
            }

            public b H(boolean z10) {
                this.f13913b |= 2;
                this.f13915d = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: I */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: J */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.C;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.D.d(MessageOptions.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < x(); i10++) {
                    if (!w(i10).isInitialized()) {
                        return false;
                    }
                }
                if (!i()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: n */
            public b b(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            public MessageOptions build() {
                MessageOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public MessageOptions buildPartial() {
                int i10;
                MessageOptions messageOptions = new MessageOptions(this);
                int i11 = this.f13913b;
                if ((i11 & 1) != 0) {
                    messageOptions.f13907c = this.f13914c;
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if ((i11 & 2) != 0) {
                    messageOptions.f13908d = this.f13915d;
                    i10 |= 2;
                }
                if ((i11 & 4) != 0) {
                    messageOptions.f13909e = this.f13916e;
                    i10 |= 4;
                }
                if ((i11 & 8) != 0) {
                    messageOptions.f13910f = this.f13917f;
                    i10 |= 8;
                }
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13919h;
                if (p1Var != null) {
                    messageOptions.f13911g = p1Var.f();
                } else {
                    if ((this.f13913b & 16) != 0) {
                        this.f13918g = Collections.unmodifiableList(this.f13918g);
                        this.f13913b &= -17;
                    }
                    messageOptions.f13911g = this.f13918g;
                }
                messageOptions.f13906b = i10;
                onBuilt();
                return messageOptions;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: q */
            public b e() {
                super.clear();
                this.f13914c = false;
                int i10 = this.f13913b;
                this.f13915d = false;
                this.f13916e = false;
                this.f13917f = false;
                this.f13913b = i10 & (-16);
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13919h;
                if (p1Var == null) {
                    this.f13918g = Collections.emptyList();
                    this.f13913b &= -17;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: r */
            public b f(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: t */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: v */
            public MessageOptions mo4630getDefaultInstanceForType() {
                return MessageOptions.t();
            }

            public UninterpretedOption w(int i10) {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13919h;
                if (p1Var == null) {
                    return this.f13918g.get(i10);
                }
                return p1Var.n(i10);
            }

            public int x() {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13919h;
                if (p1Var == null) {
                    return this.f13918g.size();
                }
                return p1Var.m();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: z */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.MessageOptions.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$MessageOptions> r1 = com.explorestack.protobuf.DescriptorProtos.MessageOptions.f13905j     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$MessageOptions r3 = (com.explorestack.protobuf.DescriptorProtos.MessageOptions) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.A(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$MessageOptions r4 = (com.explorestack.protobuf.DescriptorProtos.MessageOptions) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.A(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.MessageOptions.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$MessageOptions$b");
            }

            private b() {
                this.f13918g = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13918g = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private MessageOptions(GeneratedMessageV3.d<MessageOptions, ?> dVar) {
            super(dVar);
            this.f13912h = (byte) -1;
        }

        private MessageOptions() {
            this.f13912h = (byte) -1;
            this.f13911g = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private MessageOptions(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 8) {
                                    this.f13906b |= 1;
                                    this.f13907c = nVar.q();
                                } else if (K == 16) {
                                    this.f13906b |= 2;
                                    this.f13908d = nVar.q();
                                } else if (K == 24) {
                                    this.f13906b |= 4;
                                    this.f13909e = nVar.q();
                                } else if (K == 56) {
                                    this.f13906b |= 8;
                                    this.f13910f = nVar.q();
                                } else if (K != 7994) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    if (!(z11 & true)) {
                                        this.f13911g = new ArrayList();
                                        z11 = true;
                                    }
                                    this.f13911g.add(nVar.A(UninterpretedOption.f14015k, yVar));
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11 & true) {
                        this.f13911g = Collections.unmodifiableList(this.f13911g);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.f13911g = Collections.unmodifiableList(this.f13911g);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class MethodDescriptorProto extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: i  reason: collision with root package name */
        private static final MethodDescriptorProto f13920i = new MethodDescriptorProto();
        @Deprecated

        /* renamed from: j  reason: collision with root package name */
        public static final j1<MethodDescriptorProto> f13921j = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f13922a;

        /* renamed from: b  reason: collision with root package name */
        private volatile Object f13923b;

        /* renamed from: c  reason: collision with root package name */
        private volatile Object f13924c;

        /* renamed from: d  reason: collision with root package name */
        private volatile Object f13925d;

        /* renamed from: e  reason: collision with root package name */
        private MethodOptions f13926e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f13927f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f13928g;

        /* renamed from: h  reason: collision with root package name */
        private byte f13929h;

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<MethodDescriptorProto> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public MethodDescriptorProto parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new MethodDescriptorProto(nVar, yVar);
            }
        }

        public static b E() {
            return f13920i.toBuilder();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.f13628y;
        }

        public static MethodDescriptorProto r() {
            return f13920i;
        }

        public boolean A() {
            if ((this.f13922a & 2) != 0) {
                return true;
            }
            return false;
        }

        public boolean B() {
            if ((this.f13922a & 8) != 0) {
                return true;
            }
            return false;
        }

        public boolean C() {
            if ((this.f13922a & 4) != 0) {
                return true;
            }
            return false;
        }

        public boolean D() {
            if ((this.f13922a & 32) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: F */
        public b newBuilderForType() {
            return E();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: G */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: H */
        public b toBuilder() {
            if (this == f13920i) {
                return new b();
            }
            return new b().o(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MethodDescriptorProto)) {
                return super.equals(obj);
            }
            MethodDescriptorProto methodDescriptorProto = (MethodDescriptorProto) obj;
            if (hasName() != methodDescriptorProto.hasName()) {
                return false;
            }
            if ((hasName() && !getName().equals(methodDescriptorProto.getName())) || A() != methodDescriptorProto.A()) {
                return false;
            }
            if ((A() && !t().equals(methodDescriptorProto.t())) || C() != methodDescriptorProto.C()) {
                return false;
            }
            if ((C() && !v().equals(methodDescriptorProto.v())) || B() != methodDescriptorProto.B()) {
                return false;
            }
            if ((B() && !u().equals(methodDescriptorProto.u())) || z() != methodDescriptorProto.z()) {
                return false;
            }
            if ((z() && q() != methodDescriptorProto.q()) || D() != methodDescriptorProto.D()) {
                return false;
            }
            if ((!D() || y() == methodDescriptorProto.y()) && this.unknownFields.equals(methodDescriptorProto.unknownFields)) {
                return true;
            }
            return false;
        }

        public String getName() {
            Object obj = this.f13923b;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13923b = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<MethodDescriptorProto> getParserForType() {
            return f13921j;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13922a & 1) != 0) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.f13923b);
            } else {
                i10 = 0;
            }
            if ((this.f13922a & 2) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(2, this.f13924c);
            }
            if ((this.f13922a & 4) != 0) {
                i10 += GeneratedMessageV3.computeStringSize(3, this.f13925d);
            }
            if ((this.f13922a & 8) != 0) {
                i10 += CodedOutputStream.G(4, u());
            }
            if ((this.f13922a & 16) != 0) {
                i10 += CodedOutputStream.e(5, this.f13927f);
            }
            if ((this.f13922a & 32) != 0) {
                i10 += CodedOutputStream.e(6, this.f13928g);
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasName() {
            if ((this.f13922a & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasName()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
            }
            if (A()) {
                hashCode = (((hashCode * 37) + 2) * 53) + t().hashCode();
            }
            if (C()) {
                hashCode = (((hashCode * 37) + 3) * 53) + v().hashCode();
            }
            if (B()) {
                hashCode = (((hashCode * 37) + 4) * 53) + u().hashCode();
            }
            if (z()) {
                hashCode = (((hashCode * 37) + 5) * 53) + i0.d(q());
            }
            if (D()) {
                hashCode = (((hashCode * 37) + 6) * 53) + i0.d(y());
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.f13629z.d(MethodDescriptorProto.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13929h;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            if (B() && !u().isInitialized()) {
                this.f13929h = (byte) 0;
                return false;
            }
            this.f13929h = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new MethodDescriptorProto();
        }

        public boolean q() {
            return this.f13927f;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: s */
        public MethodDescriptorProto mo4630getDefaultInstanceForType() {
            return f13920i;
        }

        public String t() {
            Object obj = this.f13924c;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13924c = stringUtf8;
            }
            return stringUtf8;
        }

        public MethodOptions u() {
            MethodOptions methodOptions = this.f13926e;
            if (methodOptions == null) {
                return MethodOptions.r();
            }
            return methodOptions;
        }

        public String v() {
            Object obj = this.f13925d;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13925d = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.f13922a & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.f13923b);
            }
            if ((this.f13922a & 2) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.f13924c);
            }
            if ((this.f13922a & 4) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.f13925d);
            }
            if ((this.f13922a & 8) != 0) {
                codedOutputStream.L0(4, u());
            }
            if ((this.f13922a & 16) != 0) {
                codedOutputStream.n0(5, this.f13927f);
            }
            if ((this.f13922a & 32) != 0) {
                codedOutputStream.n0(6, this.f13928g);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public boolean y() {
            return this.f13928g;
        }

        public boolean z() {
            if ((this.f13922a & 16) != 0) {
                return true;
            }
            return false;
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f13930a;

            /* renamed from: b  reason: collision with root package name */
            private Object f13931b;

            /* renamed from: c  reason: collision with root package name */
            private Object f13932c;

            /* renamed from: d  reason: collision with root package name */
            private Object f13933d;

            /* renamed from: e  reason: collision with root package name */
            private MethodOptions f13934e;

            /* renamed from: f  reason: collision with root package name */
            private t1<MethodOptions, MethodOptions.b, Object> f13935f;

            /* renamed from: g  reason: collision with root package name */
            private boolean f13936g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f13937h;

            private t1<MethodOptions, MethodOptions.b, Object> l() {
                if (this.f13935f == null) {
                    this.f13935f = new t1<>(k(), getParentForChildren(), isClean());
                    this.f13934e = null;
                }
                return this.f13935f;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    l();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: a */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public MethodDescriptorProto build() {
                MethodDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public MethodDescriptorProto buildPartial() {
                int i10;
                MethodDescriptorProto methodDescriptorProto = new MethodDescriptorProto(this);
                int i11 = this.f13930a;
                if ((i11 & 1) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                methodDescriptorProto.f13923b = this.f13931b;
                if ((i11 & 2) != 0) {
                    i10 |= 2;
                }
                methodDescriptorProto.f13924c = this.f13932c;
                if ((i11 & 4) != 0) {
                    i10 |= 4;
                }
                methodDescriptorProto.f13925d = this.f13933d;
                if ((i11 & 8) != 0) {
                    t1<MethodOptions, MethodOptions.b, Object> t1Var = this.f13935f;
                    if (t1Var == null) {
                        methodDescriptorProto.f13926e = this.f13934e;
                    } else {
                        methodDescriptorProto.f13926e = t1Var.a();
                    }
                    i10 |= 8;
                }
                if ((i11 & 16) != 0) {
                    methodDescriptorProto.f13927f = this.f13936g;
                    i10 |= 16;
                }
                if ((i11 & 32) != 0) {
                    methodDescriptorProto.f13928g = this.f13937h;
                    i10 |= 32;
                }
                methodDescriptorProto.f13922a = i10;
                onBuilt();
                return methodDescriptorProto;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public b clear() {
                super.clear();
                this.f13931b = "";
                int i10 = this.f13930a;
                this.f13932c = "";
                this.f13933d = "";
                this.f13930a = i10 & (-8);
                t1<MethodOptions, MethodOptions.b, Object> t1Var = this.f13935f;
                if (t1Var == null) {
                    this.f13934e = null;
                } else {
                    t1Var.b();
                }
                int i11 = this.f13930a;
                this.f13936g = false;
                this.f13937h = false;
                this.f13930a = i11 & (-57);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.f13628y;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13629z.d(MethodDescriptorProto.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                if (m() && !k().isInitialized()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: j */
            public MethodDescriptorProto mo4630getDefaultInstanceForType() {
                return MethodDescriptorProto.r();
            }

            public MethodOptions k() {
                t1<MethodOptions, MethodOptions.b, Object> t1Var = this.f13935f;
                if (t1Var == null) {
                    MethodOptions methodOptions = this.f13934e;
                    if (methodOptions == null) {
                        return MethodOptions.r();
                    }
                    return methodOptions;
                }
                return t1Var.e();
            }

            public boolean m() {
                if ((this.f13930a & 8) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: n */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.MethodDescriptorProto.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$MethodDescriptorProto> r1 = com.explorestack.protobuf.DescriptorProtos.MethodDescriptorProto.f13921j     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$MethodDescriptorProto r3 = (com.explorestack.protobuf.DescriptorProtos.MethodDescriptorProto) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.o(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$MethodDescriptorProto r4 = (com.explorestack.protobuf.DescriptorProtos.MethodDescriptorProto) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.o(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.MethodDescriptorProto.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$MethodDescriptorProto$b");
            }

            public b o(MethodDescriptorProto methodDescriptorProto) {
                if (methodDescriptorProto == MethodDescriptorProto.r()) {
                    return this;
                }
                if (methodDescriptorProto.hasName()) {
                    this.f13930a |= 1;
                    this.f13931b = methodDescriptorProto.f13923b;
                    onChanged();
                }
                if (methodDescriptorProto.A()) {
                    this.f13930a |= 2;
                    this.f13932c = methodDescriptorProto.f13924c;
                    onChanged();
                }
                if (methodDescriptorProto.C()) {
                    this.f13930a |= 4;
                    this.f13933d = methodDescriptorProto.f13925d;
                    onChanged();
                }
                if (methodDescriptorProto.B()) {
                    q(methodDescriptorProto.u());
                }
                if (methodDescriptorProto.z()) {
                    s(methodDescriptorProto.q());
                }
                if (methodDescriptorProto.D()) {
                    v(methodDescriptorProto.y());
                }
                mergeUnknownFields(methodDescriptorProto.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public b mergeFrom(Message message) {
                if (message instanceof MethodDescriptorProto) {
                    return o((MethodDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public b q(MethodOptions methodOptions) {
                MethodOptions methodOptions2;
                t1<MethodOptions, MethodOptions.b, Object> t1Var = this.f13935f;
                if (t1Var == null) {
                    if ((this.f13930a & 8) != 0 && (methodOptions2 = this.f13934e) != null && methodOptions2 != MethodOptions.r()) {
                        this.f13934e = MethodOptions.D(this.f13934e).A(methodOptions).buildPartial();
                    } else {
                        this.f13934e = methodOptions;
                    }
                    onChanged();
                } else {
                    t1Var.g(methodOptions);
                }
                this.f13930a |= 8;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: r */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            public b s(boolean z10) {
                this.f13930a |= 16;
                this.f13936g = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: t */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: u */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            public b v(boolean z10) {
                this.f13930a |= 32;
                this.f13937h = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: w */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            private b() {
                this.f13931b = "";
                this.f13932c = "";
                this.f13933d = "";
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13931b = "";
                this.f13932c = "";
                this.f13933d = "";
                maybeForceBuilderInitialization();
            }
        }

        private MethodDescriptorProto(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f13929h = (byte) -1;
        }

        private MethodDescriptorProto() {
            this.f13929h = (byte) -1;
            this.f13923b = "";
            this.f13924c = "";
            this.f13925d = "";
        }

        private MethodDescriptorProto(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 10) {
                                ByteString r10 = nVar.r();
                                this.f13922a = 1 | this.f13922a;
                                this.f13923b = r10;
                            } else if (K == 18) {
                                ByteString r11 = nVar.r();
                                this.f13922a |= 2;
                                this.f13924c = r11;
                            } else if (K == 26) {
                                ByteString r12 = nVar.r();
                                this.f13922a |= 4;
                                this.f13925d = r12;
                            } else if (K == 34) {
                                MethodOptions.b builder = (this.f13922a & 8) != 0 ? this.f13926e.toBuilder() : null;
                                MethodOptions methodOptions = (MethodOptions) nVar.A(MethodOptions.f13939h, yVar);
                                this.f13926e = methodOptions;
                                if (builder != null) {
                                    builder.A(methodOptions);
                                    this.f13926e = builder.buildPartial();
                                }
                                this.f13922a |= 8;
                            } else if (K == 40) {
                                this.f13922a |= 16;
                                this.f13927f = nVar.q();
                            } else if (K != 48) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                this.f13922a |= 32;
                                this.f13928g = nVar.q();
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class MethodOptions extends GeneratedMessageV3.ExtendableMessage<MethodOptions> implements MessageOrBuilder {

        /* renamed from: g  reason: collision with root package name */
        private static final MethodOptions f13938g = new MethodOptions();
        @Deprecated

        /* renamed from: h  reason: collision with root package name */
        public static final j1<MethodOptions> f13939h = new a();

        /* renamed from: b  reason: collision with root package name */
        private int f13940b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f13941c;

        /* renamed from: d  reason: collision with root package name */
        private int f13942d;

        /* renamed from: e  reason: collision with root package name */
        private List<UninterpretedOption> f13943e;

        /* renamed from: f  reason: collision with root package name */
        private byte f13944f;

        /* loaded from: classes3.dex */
        public enum IdempotencyLevel implements i0.c {
            IDEMPOTENCY_UNKNOWN(0),
            NO_SIDE_EFFECTS(1),
            IDEMPOTENT(2);
            
            public static final int IDEMPOTENCY_UNKNOWN_VALUE = 0;
            public static final int IDEMPOTENT_VALUE = 2;
            public static final int NO_SIDE_EFFECTS_VALUE = 1;
            private final int value;
            private static final i0.d<IdempotencyLevel> internalValueMap = new a();
            private static final IdempotencyLevel[] VALUES = values();

            /* loaded from: classes3.dex */
            static class a implements i0.d<IdempotencyLevel> {
                a() {
                }

                @Override // com.explorestack.protobuf.i0.d
                /* renamed from: a */
                public IdempotencyLevel findValueByNumber(int i10) {
                    return IdempotencyLevel.forNumber(i10);
                }
            }

            IdempotencyLevel(int i10) {
                this.value = i10;
            }

            public static IdempotencyLevel forNumber(int i10) {
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            return null;
                        }
                        return IDEMPOTENT;
                    }
                    return NO_SIDE_EFFECTS;
                }
                return IDEMPOTENCY_UNKNOWN;
            }

            public static final Descriptors.EnumDescriptor getDescriptor() {
                return MethodOptions.getDescriptor().getEnumTypes().get(0);
            }

            public static i0.d<IdempotencyLevel> internalGetValueMap() {
                return internalValueMap;
            }

            public final Descriptors.EnumDescriptor getDescriptorForType() {
                return getDescriptor();
            }

            @Override // com.explorestack.protobuf.i0.c
            public final int getNumber() {
                return this.value;
            }

            public final Descriptors.EnumValueDescriptor getValueDescriptor() {
                return getDescriptor().getValues().get(ordinal());
            }

            @Deprecated
            public static IdempotencyLevel valueOf(int i10) {
                return forNumber(i10);
            }

            public static IdempotencyLevel valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
                if (enumValueDescriptor.getType() == getDescriptor()) {
                    return VALUES[enumValueDescriptor.getIndex()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }
        }

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<MethodOptions> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public MethodOptions parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new MethodOptions(nVar, yVar);
            }
        }

        public static b C() {
            return f13938g.toBuilder();
        }

        public static b D(MethodOptions methodOptions) {
            return f13938g.toBuilder().A(methodOptions);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.O;
        }

        public static MethodOptions r() {
            return f13938g;
        }

        public boolean A() {
            if ((this.f13940b & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean B() {
            if ((this.f13940b & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: E */
        public b newBuilderForType() {
            return C();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: F */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: G */
        public b toBuilder() {
            if (this == f13938g) {
                return new b();
            }
            return new b().A(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MethodOptions)) {
                return super.equals(obj);
            }
            MethodOptions methodOptions = (MethodOptions) obj;
            if (A() != methodOptions.A()) {
                return false;
            }
            if ((A() && t() != methodOptions.t()) || B() != methodOptions.B()) {
                return false;
            }
            if ((!B() || this.f13942d == methodOptions.f13942d) && z().equals(methodOptions.z()) && this.unknownFields.equals(methodOptions.unknownFields) && f().equals(methodOptions.f())) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<MethodOptions> getParserForType() {
            return f13939h;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13940b & 1) != 0) {
                i10 = CodedOutputStream.e(33, this.f13941c);
            } else {
                i10 = 0;
            }
            if ((this.f13940b & 2) != 0) {
                i10 += CodedOutputStream.l(34, this.f13942d);
            }
            for (int i12 = 0; i12 < this.f13943e.size(); i12++) {
                i10 += CodedOutputStream.G(999, this.f13943e.get(i12));
            }
            int e10 = i10 + e() + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (A()) {
                hashCode = (((hashCode * 37) + 33) * 53) + i0.d(t());
            }
            if (B()) {
                hashCode = (((hashCode * 37) + 34) * 53) + this.f13942d;
            }
            if (y() > 0) {
                hashCode = (((hashCode * 37) + 999) * 53) + z().hashCode();
            }
            int hashFields = (AbstractMessage.hashFields(hashCode, f()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashFields;
            return hashFields;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.P.d(MethodOptions.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.ExtendableMessage, com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13944f;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < y(); i10++) {
                if (!v(i10).isInitialized()) {
                    this.f13944f = (byte) 0;
                    return false;
                }
            }
            if (!d()) {
                this.f13944f = (byte) 0;
                return false;
            }
            this.f13944f = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new MethodOptions();
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: s */
        public MethodOptions mo4630getDefaultInstanceForType() {
            return f13938g;
        }

        public boolean t() {
            return this.f13941c;
        }

        public IdempotencyLevel u() {
            IdempotencyLevel valueOf = IdempotencyLevel.valueOf(this.f13942d);
            if (valueOf == null) {
                return IdempotencyLevel.IDEMPOTENCY_UNKNOWN;
            }
            return valueOf;
        }

        public UninterpretedOption v(int i10) {
            return this.f13943e.get(i10);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            GeneratedMessageV3.ExtendableMessage<MessageType>.a g10 = g();
            if ((this.f13940b & 1) != 0) {
                codedOutputStream.n0(33, this.f13941c);
            }
            if ((this.f13940b & 2) != 0) {
                codedOutputStream.v0(34, this.f13942d);
            }
            for (int i10 = 0; i10 < this.f13943e.size(); i10++) {
                codedOutputStream.L0(999, this.f13943e.get(i10));
            }
            g10.a(536870912, codedOutputStream);
            this.unknownFields.writeTo(codedOutputStream);
        }

        public int y() {
            return this.f13943e.size();
        }

        public List<UninterpretedOption> z() {
            return this.f13943e;
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.d<MethodOptions, b> implements MessageOrBuilder {

            /* renamed from: b  reason: collision with root package name */
            private int f13945b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f13946c;

            /* renamed from: d  reason: collision with root package name */
            private int f13947d;

            /* renamed from: e  reason: collision with root package name */
            private List<UninterpretedOption> f13948e;

            /* renamed from: f  reason: collision with root package name */
            private p1<UninterpretedOption, UninterpretedOption.b, Object> f13949f;

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    y();
                }
            }

            private void u() {
                if ((this.f13945b & 4) == 0) {
                    this.f13948e = new ArrayList(this.f13948e);
                    this.f13945b |= 4;
                }
            }

            private p1<UninterpretedOption, UninterpretedOption.b, Object> y() {
                boolean z10;
                if (this.f13949f == null) {
                    List<UninterpretedOption> list = this.f13948e;
                    if ((this.f13945b & 4) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13949f = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13948e = null;
                }
                return this.f13949f;
            }

            public b A(MethodOptions methodOptions) {
                if (methodOptions == MethodOptions.r()) {
                    return this;
                }
                if (methodOptions.A()) {
                    D(methodOptions.t());
                }
                if (methodOptions.B()) {
                    F(methodOptions.u());
                }
                if (this.f13949f == null) {
                    if (!methodOptions.f13943e.isEmpty()) {
                        if (this.f13948e.isEmpty()) {
                            this.f13948e = methodOptions.f13943e;
                            this.f13945b &= -5;
                        } else {
                            u();
                            this.f13948e.addAll(methodOptions.f13943e);
                        }
                        onChanged();
                    }
                } else if (!methodOptions.f13943e.isEmpty()) {
                    if (this.f13949f.t()) {
                        this.f13949f.h();
                        p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = null;
                        this.f13949f = null;
                        this.f13948e = methodOptions.f13943e;
                        this.f13945b &= -5;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = y();
                        }
                        this.f13949f = p1Var;
                    } else {
                        this.f13949f.a(methodOptions.f13943e);
                    }
                }
                j(methodOptions);
                mergeUnknownFields(methodOptions.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: B */
            public b mergeFrom(Message message) {
                if (message instanceof MethodOptions) {
                    return A((MethodOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: C */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            public b D(boolean z10) {
                this.f13945b |= 1;
                this.f13946c = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: E */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            public b F(IdempotencyLevel idempotencyLevel) {
                idempotencyLevel.getClass();
                this.f13945b |= 2;
                this.f13947d = idempotencyLevel.getNumber();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: G */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: H */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.O;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.P.d(MethodOptions.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < x(); i10++) {
                    if (!w(i10).isInitialized()) {
                        return false;
                    }
                }
                if (!i()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: n */
            public b b(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            public MethodOptions build() {
                MethodOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public MethodOptions buildPartial() {
                int i10;
                MethodOptions methodOptions = new MethodOptions(this);
                int i11 = this.f13945b;
                if ((i11 & 1) != 0) {
                    methodOptions.f13941c = this.f13946c;
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if ((i11 & 2) != 0) {
                    i10 |= 2;
                }
                methodOptions.f13942d = this.f13947d;
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13949f;
                if (p1Var != null) {
                    methodOptions.f13943e = p1Var.f();
                } else {
                    if ((this.f13945b & 4) != 0) {
                        this.f13948e = Collections.unmodifiableList(this.f13948e);
                        this.f13945b &= -5;
                    }
                    methodOptions.f13943e = this.f13948e;
                }
                methodOptions.f13940b = i10;
                onBuilt();
                return methodOptions;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: q */
            public b e() {
                super.clear();
                this.f13946c = false;
                int i10 = this.f13945b;
                this.f13947d = 0;
                this.f13945b = i10 & (-4);
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13949f;
                if (p1Var == null) {
                    this.f13948e = Collections.emptyList();
                    this.f13945b &= -5;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: r */
            public b f(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: t */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: v */
            public MethodOptions mo4630getDefaultInstanceForType() {
                return MethodOptions.r();
            }

            public UninterpretedOption w(int i10) {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13949f;
                if (p1Var == null) {
                    return this.f13948e.get(i10);
                }
                return p1Var.n(i10);
            }

            public int x() {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13949f;
                if (p1Var == null) {
                    return this.f13948e.size();
                }
                return p1Var.m();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: z */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.MethodOptions.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$MethodOptions> r1 = com.explorestack.protobuf.DescriptorProtos.MethodOptions.f13939h     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$MethodOptions r3 = (com.explorestack.protobuf.DescriptorProtos.MethodOptions) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.A(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$MethodOptions r4 = (com.explorestack.protobuf.DescriptorProtos.MethodOptions) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.A(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.MethodOptions.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$MethodOptions$b");
            }

            private b() {
                this.f13947d = 0;
                this.f13948e = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13947d = 0;
                this.f13948e = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private MethodOptions(GeneratedMessageV3.d<MethodOptions, ?> dVar) {
            super(dVar);
            this.f13944f = (byte) -1;
        }

        private MethodOptions() {
            this.f13944f = (byte) -1;
            this.f13942d = 0;
            this.f13943e = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private MethodOptions(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 264) {
                                this.f13940b |= 1;
                                this.f13941c = nVar.q();
                            } else if (K == 272) {
                                int t10 = nVar.t();
                                if (IdempotencyLevel.valueOf(t10) == null) {
                                    g10.A(34, t10);
                                } else {
                                    this.f13940b |= 2;
                                    this.f13942d = t10;
                                }
                            } else if (K != 7994) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.f13943e = new ArrayList();
                                    z11 = true;
                                }
                                this.f13943e.add(nVar.A(UninterpretedOption.f14015k, yVar));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11 & true) {
                        this.f13943e = Collections.unmodifiableList(this.f13943e);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.f13943e = Collections.unmodifiableList(this.f13943e);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class OneofDescriptorProto extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: e  reason: collision with root package name */
        private static final OneofDescriptorProto f13950e = new OneofDescriptorProto();
        @Deprecated

        /* renamed from: f  reason: collision with root package name */
        public static final j1<OneofDescriptorProto> f13951f = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f13952a;

        /* renamed from: b  reason: collision with root package name */
        private volatile Object f13953b;

        /* renamed from: c  reason: collision with root package name */
        private OneofOptions f13954c;

        /* renamed from: d  reason: collision with root package name */
        private byte f13955d;

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<OneofDescriptorProto> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public OneofDescriptorProto parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new OneofDescriptorProto(nVar, yVar);
            }
        }

        public static OneofDescriptorProto g() {
            return f13950e;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.f13618o;
        }

        public static b k() {
            return f13950e.toBuilder();
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof OneofDescriptorProto)) {
                return super.equals(obj);
            }
            OneofDescriptorProto oneofDescriptorProto = (OneofDescriptorProto) obj;
            if (hasName() != oneofDescriptorProto.hasName()) {
                return false;
            }
            if ((hasName() && !getName().equals(oneofDescriptorProto.getName())) || j() != oneofDescriptorProto.j()) {
                return false;
            }
            if ((!j() || i().equals(oneofDescriptorProto.i())) && this.unknownFields.equals(oneofDescriptorProto.unknownFields)) {
                return true;
            }
            return false;
        }

        public String getName() {
            Object obj = this.f13953b;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13953b = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<OneofDescriptorProto> getParserForType() {
            return f13951f;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13952a & 1) != 0) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.f13953b);
            } else {
                i10 = 0;
            }
            if ((this.f13952a & 2) != 0) {
                i10 += CodedOutputStream.G(2, i());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: h */
        public OneofDescriptorProto mo4630getDefaultInstanceForType() {
            return f13950e;
        }

        public boolean hasName() {
            if ((this.f13952a & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasName()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
            }
            if (j()) {
                hashCode = (((hashCode * 37) + 2) * 53) + i().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        public OneofOptions i() {
            OneofOptions oneofOptions = this.f13954c;
            if (oneofOptions == null) {
                return OneofOptions.k();
            }
            return oneofOptions;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.f13619p.d(OneofDescriptorProto.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13955d;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            if (j() && !i().isInitialized()) {
                this.f13955d = (byte) 0;
                return false;
            }
            this.f13955d = (byte) 1;
            return true;
        }

        public boolean j() {
            if ((this.f13952a & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: n */
        public b newBuilderForType() {
            return k();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new OneofDescriptorProto();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: q */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: r */
        public b toBuilder() {
            if (this == f13950e) {
                return new b();
            }
            return new b().o(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.f13952a & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.f13953b);
            }
            if ((this.f13952a & 2) != 0) {
                codedOutputStream.L0(2, i());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f13956a;

            /* renamed from: b  reason: collision with root package name */
            private Object f13957b;

            /* renamed from: c  reason: collision with root package name */
            private OneofOptions f13958c;

            /* renamed from: d  reason: collision with root package name */
            private t1<OneofOptions, OneofOptions.b, Object> f13959d;

            private t1<OneofOptions, OneofOptions.b, Object> l() {
                if (this.f13959d == null) {
                    this.f13959d = new t1<>(k(), getParentForChildren(), isClean());
                    this.f13958c = null;
                }
                return this.f13959d;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    l();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: a */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public OneofDescriptorProto build() {
                OneofDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public OneofDescriptorProto buildPartial() {
                int i10;
                OneofDescriptorProto oneofDescriptorProto = new OneofDescriptorProto(this);
                int i11 = this.f13956a;
                if ((i11 & 1) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                oneofDescriptorProto.f13953b = this.f13957b;
                if ((i11 & 2) != 0) {
                    t1<OneofOptions, OneofOptions.b, Object> t1Var = this.f13959d;
                    if (t1Var == null) {
                        oneofDescriptorProto.f13954c = this.f13958c;
                    } else {
                        oneofDescriptorProto.f13954c = t1Var.a();
                    }
                    i10 |= 2;
                }
                oneofDescriptorProto.f13952a = i10;
                onBuilt();
                return oneofDescriptorProto;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public b clear() {
                super.clear();
                this.f13957b = "";
                this.f13956a &= -2;
                t1<OneofOptions, OneofOptions.b, Object> t1Var = this.f13959d;
                if (t1Var == null) {
                    this.f13958c = null;
                } else {
                    t1Var.b();
                }
                this.f13956a &= -3;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.f13618o;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13619p.d(OneofDescriptorProto.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                if (m() && !k().isInitialized()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: j */
            public OneofDescriptorProto mo4630getDefaultInstanceForType() {
                return OneofDescriptorProto.g();
            }

            public OneofOptions k() {
                t1<OneofOptions, OneofOptions.b, Object> t1Var = this.f13959d;
                if (t1Var == null) {
                    OneofOptions oneofOptions = this.f13958c;
                    if (oneofOptions == null) {
                        return OneofOptions.k();
                    }
                    return oneofOptions;
                }
                return t1Var.e();
            }

            public boolean m() {
                if ((this.f13956a & 2) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: n */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.OneofDescriptorProto.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$OneofDescriptorProto> r1 = com.explorestack.protobuf.DescriptorProtos.OneofDescriptorProto.f13951f     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$OneofDescriptorProto r3 = (com.explorestack.protobuf.DescriptorProtos.OneofDescriptorProto) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.o(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$OneofDescriptorProto r4 = (com.explorestack.protobuf.DescriptorProtos.OneofDescriptorProto) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.o(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.OneofDescriptorProto.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$OneofDescriptorProto$b");
            }

            public b o(OneofDescriptorProto oneofDescriptorProto) {
                if (oneofDescriptorProto == OneofDescriptorProto.g()) {
                    return this;
                }
                if (oneofDescriptorProto.hasName()) {
                    this.f13956a |= 1;
                    this.f13957b = oneofDescriptorProto.f13953b;
                    onChanged();
                }
                if (oneofDescriptorProto.j()) {
                    q(oneofDescriptorProto.i());
                }
                mergeUnknownFields(oneofDescriptorProto.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public b mergeFrom(Message message) {
                if (message instanceof OneofDescriptorProto) {
                    return o((OneofDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public b q(OneofOptions oneofOptions) {
                OneofOptions oneofOptions2;
                t1<OneofOptions, OneofOptions.b, Object> t1Var = this.f13959d;
                if (t1Var == null) {
                    if ((this.f13956a & 2) != 0 && (oneofOptions2 = this.f13958c) != null && oneofOptions2 != OneofOptions.k()) {
                        this.f13958c = OneofOptions.u(this.f13958c).A(oneofOptions).buildPartial();
                    } else {
                        this.f13958c = oneofOptions;
                    }
                    onChanged();
                } else {
                    t1Var.g(oneofOptions);
                }
                this.f13956a |= 2;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: r */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: t */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: u */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            private b() {
                this.f13957b = "";
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13957b = "";
                maybeForceBuilderInitialization();
            }
        }

        private OneofDescriptorProto(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f13955d = (byte) -1;
        }

        private OneofDescriptorProto() {
            this.f13955d = (byte) -1;
            this.f13953b = "";
        }

        private OneofDescriptorProto(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 10) {
                                ByteString r10 = nVar.r();
                                this.f13952a = 1 | this.f13952a;
                                this.f13953b = r10;
                            } else if (K != 18) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                OneofOptions.b builder = (this.f13952a & 2) != 0 ? this.f13954c.toBuilder() : null;
                                OneofOptions oneofOptions = (OneofOptions) nVar.A(OneofOptions.f13961e, yVar);
                                this.f13954c = oneofOptions;
                                if (builder != null) {
                                    builder.A(oneofOptions);
                                    this.f13954c = builder.buildPartial();
                                }
                                this.f13952a |= 2;
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class OneofOptions extends GeneratedMessageV3.ExtendableMessage<OneofOptions> implements MessageOrBuilder {

        /* renamed from: d  reason: collision with root package name */
        private static final OneofOptions f13960d = new OneofOptions();
        @Deprecated

        /* renamed from: e  reason: collision with root package name */
        public static final j1<OneofOptions> f13961e = new a();

        /* renamed from: b  reason: collision with root package name */
        private List<UninterpretedOption> f13962b;

        /* renamed from: c  reason: collision with root package name */
        private byte f13963c;

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<OneofOptions> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public OneofOptions parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new OneofOptions(nVar, yVar);
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.G;
        }

        public static OneofOptions k() {
            return f13960d;
        }

        public static b t() {
            return f13960d.toBuilder();
        }

        public static b u(OneofOptions oneofOptions) {
            return f13960d.toBuilder().A(oneofOptions);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof OneofOptions)) {
                return super.equals(obj);
            }
            OneofOptions oneofOptions = (OneofOptions) obj;
            if (s().equals(oneofOptions.s()) && this.unknownFields.equals(oneofOptions.unknownFields) && f().equals(oneofOptions.f())) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<OneofOptions> getParserForType() {
            return f13961e;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.f13962b.size(); i12++) {
                i11 += CodedOutputStream.G(999, this.f13962b.get(i12));
            }
            int e10 = i11 + e() + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (r() > 0) {
                hashCode = (((hashCode * 37) + 999) * 53) + s().hashCode();
            }
            int hashFields = (AbstractMessage.hashFields(hashCode, f()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashFields;
            return hashFields;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.H.d(OneofOptions.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.ExtendableMessage, com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13963c;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < r(); i10++) {
                if (!q(i10).isInitialized()) {
                    this.f13963c = (byte) 0;
                    return false;
                }
            }
            if (!d()) {
                this.f13963c = (byte) 0;
                return false;
            }
            this.f13963c = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: n */
        public OneofOptions mo4630getDefaultInstanceForType() {
            return f13960d;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new OneofOptions();
        }

        public UninterpretedOption q(int i10) {
            return this.f13962b.get(i10);
        }

        public int r() {
            return this.f13962b.size();
        }

        public List<UninterpretedOption> s() {
            return this.f13962b;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: v */
        public b newBuilderForType() {
            return t();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            GeneratedMessageV3.ExtendableMessage<MessageType>.a g10 = g();
            for (int i10 = 0; i10 < this.f13962b.size(); i10++) {
                codedOutputStream.L0(999, this.f13962b.get(i10));
            }
            g10.a(536870912, codedOutputStream);
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: y */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: z */
        public b toBuilder() {
            if (this == f13960d) {
                return new b();
            }
            return new b().A(this);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.d<OneofOptions, b> implements MessageOrBuilder {

            /* renamed from: b  reason: collision with root package name */
            private int f13964b;

            /* renamed from: c  reason: collision with root package name */
            private List<UninterpretedOption> f13965c;

            /* renamed from: d  reason: collision with root package name */
            private p1<UninterpretedOption, UninterpretedOption.b, Object> f13966d;

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    y();
                }
            }

            private void u() {
                if ((this.f13964b & 1) == 0) {
                    this.f13965c = new ArrayList(this.f13965c);
                    this.f13964b |= 1;
                }
            }

            private p1<UninterpretedOption, UninterpretedOption.b, Object> y() {
                if (this.f13966d == null) {
                    List<UninterpretedOption> list = this.f13965c;
                    boolean z10 = true;
                    if ((this.f13964b & 1) == 0) {
                        z10 = false;
                    }
                    this.f13966d = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13965c = null;
                }
                return this.f13966d;
            }

            public b A(OneofOptions oneofOptions) {
                if (oneofOptions == OneofOptions.k()) {
                    return this;
                }
                if (this.f13966d == null) {
                    if (!oneofOptions.f13962b.isEmpty()) {
                        if (this.f13965c.isEmpty()) {
                            this.f13965c = oneofOptions.f13962b;
                            this.f13964b &= -2;
                        } else {
                            u();
                            this.f13965c.addAll(oneofOptions.f13962b);
                        }
                        onChanged();
                    }
                } else if (!oneofOptions.f13962b.isEmpty()) {
                    if (this.f13966d.t()) {
                        this.f13966d.h();
                        p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = null;
                        this.f13966d = null;
                        this.f13965c = oneofOptions.f13962b;
                        this.f13964b &= -2;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = y();
                        }
                        this.f13966d = p1Var;
                    } else {
                        this.f13966d.a(oneofOptions.f13962b);
                    }
                }
                j(oneofOptions);
                mergeUnknownFields(oneofOptions.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: B */
            public b mergeFrom(Message message) {
                if (message instanceof OneofOptions) {
                    return A((OneofOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: C */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: D */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: E */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: F */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.G;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.H.d(OneofOptions.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < x(); i10++) {
                    if (!w(i10).isInitialized()) {
                        return false;
                    }
                }
                if (!i()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: n */
            public b b(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            public OneofOptions build() {
                OneofOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public OneofOptions buildPartial() {
                OneofOptions oneofOptions = new OneofOptions(this);
                int i10 = this.f13964b;
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13966d;
                if (p1Var != null) {
                    oneofOptions.f13962b = p1Var.f();
                } else {
                    if ((i10 & 1) != 0) {
                        this.f13965c = Collections.unmodifiableList(this.f13965c);
                        this.f13964b &= -2;
                    }
                    oneofOptions.f13962b = this.f13965c;
                }
                onBuilt();
                return oneofOptions;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: q */
            public b e() {
                super.clear();
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13966d;
                if (p1Var == null) {
                    this.f13965c = Collections.emptyList();
                    this.f13964b &= -2;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: r */
            public b f(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: t */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: v */
            public OneofOptions mo4630getDefaultInstanceForType() {
                return OneofOptions.k();
            }

            public UninterpretedOption w(int i10) {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13966d;
                if (p1Var == null) {
                    return this.f13965c.get(i10);
                }
                return p1Var.n(i10);
            }

            public int x() {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13966d;
                if (p1Var == null) {
                    return this.f13965c.size();
                }
                return p1Var.m();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: z */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.OneofOptions.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$OneofOptions> r1 = com.explorestack.protobuf.DescriptorProtos.OneofOptions.f13961e     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$OneofOptions r3 = (com.explorestack.protobuf.DescriptorProtos.OneofOptions) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.A(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$OneofOptions r4 = (com.explorestack.protobuf.DescriptorProtos.OneofOptions) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.A(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.OneofOptions.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$OneofOptions$b");
            }

            private b() {
                this.f13965c = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13965c = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private OneofOptions(GeneratedMessageV3.d<OneofOptions, ?> dVar) {
            super(dVar);
            this.f13963c = (byte) -1;
        }

        private OneofOptions() {
            this.f13963c = (byte) -1;
            this.f13962b = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private OneofOptions(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K != 7994) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    if (!z11) {
                                        this.f13962b = new ArrayList();
                                        z11 = true;
                                    }
                                    this.f13962b.add(nVar.A(UninterpretedOption.f14015k, yVar));
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11) {
                        this.f13962b = Collections.unmodifiableList(this.f13962b);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11) {
                this.f13962b = Collections.unmodifiableList(this.f13962b);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ServiceDescriptorProto extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: f  reason: collision with root package name */
        private static final ServiceDescriptorProto f13967f = new ServiceDescriptorProto();
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        public static final j1<ServiceDescriptorProto> f13968g = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f13969a;

        /* renamed from: b  reason: collision with root package name */
        private volatile Object f13970b;

        /* renamed from: c  reason: collision with root package name */
        private List<MethodDescriptorProto> f13971c;

        /* renamed from: d  reason: collision with root package name */
        private ServiceOptions f13972d;

        /* renamed from: e  reason: collision with root package name */
        private byte f13973e;

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<ServiceDescriptorProto> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public ServiceDescriptorProto parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new ServiceDescriptorProto(nVar, yVar);
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.f13626w;
        }

        public static ServiceDescriptorProto i() {
            return f13967f;
        }

        public static b r() {
            return f13967f.toBuilder();
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ServiceDescriptorProto)) {
                return super.equals(obj);
            }
            ServiceDescriptorProto serviceDescriptorProto = (ServiceDescriptorProto) obj;
            if (hasName() != serviceDescriptorProto.hasName()) {
                return false;
            }
            if ((hasName() && !getName().equals(serviceDescriptorProto.getName())) || !getMethodList().equals(serviceDescriptorProto.getMethodList()) || q() != serviceDescriptorProto.q()) {
                return false;
            }
            if ((!q() || n().equals(serviceDescriptorProto.n())) && this.unknownFields.equals(serviceDescriptorProto.unknownFields)) {
                return true;
            }
            return false;
        }

        public int getMethodCount() {
            return this.f13971c.size();
        }

        public List<MethodDescriptorProto> getMethodList() {
            return this.f13971c;
        }

        public String getName() {
            Object obj = this.f13970b;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f13970b = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<ServiceDescriptorProto> getParserForType() {
            return f13968g;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13969a & 1) != 0) {
                i10 = GeneratedMessageV3.computeStringSize(1, this.f13970b);
            } else {
                i10 = 0;
            }
            for (int i12 = 0; i12 < this.f13971c.size(); i12++) {
                i10 += CodedOutputStream.G(2, this.f13971c.get(i12));
            }
            if ((this.f13969a & 2) != 0) {
                i10 += CodedOutputStream.G(3, n());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasName() {
            if ((this.f13969a & 1) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (hasName()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
            }
            if (getMethodCount() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + getMethodList().hashCode();
            }
            if (q()) {
                hashCode = (((hashCode * 37) + 3) * 53) + n().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.f13627x.d(ServiceDescriptorProto.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13973e;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < getMethodCount(); i10++) {
                if (!k(i10).isInitialized()) {
                    this.f13973e = (byte) 0;
                    return false;
                }
            }
            if (q() && !n().isInitialized()) {
                this.f13973e = (byte) 0;
                return false;
            }
            this.f13973e = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: j */
        public ServiceDescriptorProto mo4630getDefaultInstanceForType() {
            return f13967f;
        }

        public MethodDescriptorProto k(int i10) {
            return this.f13971c.get(i10);
        }

        public ServiceOptions n() {
            ServiceOptions serviceOptions = this.f13972d;
            if (serviceOptions == null) {
                return ServiceOptions.q();
            }
            return serviceOptions;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new ServiceDescriptorProto();
        }

        public boolean q() {
            if ((this.f13969a & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: s */
        public b newBuilderForType() {
            return r();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: t */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: u */
        public b toBuilder() {
            if (this == f13967f) {
                return new b();
            }
            return new b().q(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if ((this.f13969a & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.f13970b);
            }
            for (int i10 = 0; i10 < this.f13971c.size(); i10++) {
                codedOutputStream.L0(2, this.f13971c.get(i10));
            }
            if ((this.f13969a & 2) != 0) {
                codedOutputStream.L0(3, n());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f13974a;

            /* renamed from: b  reason: collision with root package name */
            private Object f13975b;

            /* renamed from: c  reason: collision with root package name */
            private List<MethodDescriptorProto> f13976c;

            /* renamed from: d  reason: collision with root package name */
            private p1<MethodDescriptorProto, MethodDescriptorProto.b, Object> f13977d;

            /* renamed from: e  reason: collision with root package name */
            private ServiceOptions f13978e;

            /* renamed from: f  reason: collision with root package name */
            private t1<ServiceOptions, ServiceOptions.b, Object> f13979f;

            private void ensureMethodIsMutable() {
                if ((this.f13974a & 2) == 0) {
                    this.f13976c = new ArrayList(this.f13976c);
                    this.f13974a |= 2;
                }
            }

            private p1<MethodDescriptorProto, MethodDescriptorProto.b, Object> l() {
                boolean z10;
                if (this.f13977d == null) {
                    List<MethodDescriptorProto> list = this.f13976c;
                    if ((this.f13974a & 2) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13977d = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13976c = null;
                }
                return this.f13977d;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    l();
                    n();
                }
            }

            private t1<ServiceOptions, ServiceOptions.b, Object> n() {
                if (this.f13979f == null) {
                    this.f13979f = new t1<>(m(), getParentForChildren(), isClean());
                    this.f13978e = null;
                }
                return this.f13979f;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: a */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public ServiceDescriptorProto build() {
                ServiceDescriptorProto buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public ServiceDescriptorProto buildPartial() {
                int i10;
                ServiceDescriptorProto serviceDescriptorProto = new ServiceDescriptorProto(this);
                int i11 = this.f13974a;
                if ((i11 & 1) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                serviceDescriptorProto.f13970b = this.f13975b;
                p1<MethodDescriptorProto, MethodDescriptorProto.b, Object> p1Var = this.f13977d;
                if (p1Var != null) {
                    serviceDescriptorProto.f13971c = p1Var.f();
                } else {
                    if ((this.f13974a & 2) != 0) {
                        this.f13976c = Collections.unmodifiableList(this.f13976c);
                        this.f13974a &= -3;
                    }
                    serviceDescriptorProto.f13971c = this.f13976c;
                }
                if ((i11 & 4) != 0) {
                    t1<ServiceOptions, ServiceOptions.b, Object> t1Var = this.f13979f;
                    if (t1Var == null) {
                        serviceDescriptorProto.f13972d = this.f13978e;
                    } else {
                        serviceDescriptorProto.f13972d = t1Var.a();
                    }
                    i10 |= 2;
                }
                serviceDescriptorProto.f13969a = i10;
                onBuilt();
                return serviceDescriptorProto;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public b clear() {
                super.clear();
                this.f13975b = "";
                this.f13974a &= -2;
                p1<MethodDescriptorProto, MethodDescriptorProto.b, Object> p1Var = this.f13977d;
                if (p1Var == null) {
                    this.f13976c = Collections.emptyList();
                    this.f13974a &= -3;
                } else {
                    p1Var.g();
                }
                t1<ServiceOptions, ServiceOptions.b, Object> t1Var = this.f13979f;
                if (t1Var == null) {
                    this.f13978e = null;
                } else {
                    t1Var.b();
                }
                this.f13974a &= -5;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.f13626w;
            }

            public int getMethodCount() {
                p1<MethodDescriptorProto, MethodDescriptorProto.b, Object> p1Var = this.f13977d;
                if (p1Var == null) {
                    return this.f13976c.size();
                }
                return p1Var.m();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.f13627x.d(ServiceDescriptorProto.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < getMethodCount(); i10++) {
                    if (!k(i10).isInitialized()) {
                        return false;
                    }
                }
                if (o() && !m().isInitialized()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: j */
            public ServiceDescriptorProto mo4630getDefaultInstanceForType() {
                return ServiceDescriptorProto.i();
            }

            public MethodDescriptorProto k(int i10) {
                p1<MethodDescriptorProto, MethodDescriptorProto.b, Object> p1Var = this.f13977d;
                if (p1Var == null) {
                    return this.f13976c.get(i10);
                }
                return p1Var.n(i10);
            }

            public ServiceOptions m() {
                t1<ServiceOptions, ServiceOptions.b, Object> t1Var = this.f13979f;
                if (t1Var == null) {
                    ServiceOptions serviceOptions = this.f13978e;
                    if (serviceOptions == null) {
                        return ServiceOptions.q();
                    }
                    return serviceOptions;
                }
                return t1Var.e();
            }

            public boolean o() {
                if ((this.f13974a & 4) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.ServiceDescriptorProto.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$ServiceDescriptorProto> r1 = com.explorestack.protobuf.DescriptorProtos.ServiceDescriptorProto.f13968g     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$ServiceDescriptorProto r3 = (com.explorestack.protobuf.DescriptorProtos.ServiceDescriptorProto) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.q(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$ServiceDescriptorProto r4 = (com.explorestack.protobuf.DescriptorProtos.ServiceDescriptorProto) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.q(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.ServiceDescriptorProto.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$ServiceDescriptorProto$b");
            }

            public b q(ServiceDescriptorProto serviceDescriptorProto) {
                if (serviceDescriptorProto == ServiceDescriptorProto.i()) {
                    return this;
                }
                if (serviceDescriptorProto.hasName()) {
                    this.f13974a |= 1;
                    this.f13975b = serviceDescriptorProto.f13970b;
                    onChanged();
                }
                if (this.f13977d == null) {
                    if (!serviceDescriptorProto.f13971c.isEmpty()) {
                        if (this.f13976c.isEmpty()) {
                            this.f13976c = serviceDescriptorProto.f13971c;
                            this.f13974a &= -3;
                        } else {
                            ensureMethodIsMutable();
                            this.f13976c.addAll(serviceDescriptorProto.f13971c);
                        }
                        onChanged();
                    }
                } else if (!serviceDescriptorProto.f13971c.isEmpty()) {
                    if (this.f13977d.t()) {
                        this.f13977d.h();
                        p1<MethodDescriptorProto, MethodDescriptorProto.b, Object> p1Var = null;
                        this.f13977d = null;
                        this.f13976c = serviceDescriptorProto.f13971c;
                        this.f13974a &= -3;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = l();
                        }
                        this.f13977d = p1Var;
                    } else {
                        this.f13977d.a(serviceDescriptorProto.f13971c);
                    }
                }
                if (serviceDescriptorProto.q()) {
                    s(serviceDescriptorProto.n());
                }
                mergeUnknownFields(serviceDescriptorProto.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: r */
            public b mergeFrom(Message message) {
                if (message instanceof ServiceDescriptorProto) {
                    return q((ServiceDescriptorProto) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public b s(ServiceOptions serviceOptions) {
                ServiceOptions serviceOptions2;
                t1<ServiceOptions, ServiceOptions.b, Object> t1Var = this.f13979f;
                if (t1Var == null) {
                    if ((this.f13974a & 4) != 0 && (serviceOptions2 = this.f13978e) != null && serviceOptions2 != ServiceOptions.q()) {
                        this.f13978e = ServiceOptions.A(this.f13978e).A(serviceOptions).buildPartial();
                    } else {
                        this.f13978e = serviceOptions;
                    }
                    onChanged();
                } else {
                    t1Var.g(serviceOptions);
                }
                this.f13974a |= 4;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: t */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: u */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: v */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: w */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            private b() {
                this.f13975b = "";
                this.f13976c = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13975b = "";
                this.f13976c = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private ServiceDescriptorProto(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f13973e = (byte) -1;
        }

        private ServiceDescriptorProto() {
            this.f13973e = (byte) -1;
            this.f13970b = "";
            this.f13971c = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private ServiceDescriptorProto(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 10) {
                                ByteString r10 = nVar.r();
                                this.f13969a = 1 | this.f13969a;
                                this.f13970b = r10;
                            } else if (K == 18) {
                                if (!(z11 & true)) {
                                    this.f13971c = new ArrayList();
                                    z11 = true;
                                }
                                this.f13971c.add(nVar.A(MethodDescriptorProto.f13921j, yVar));
                            } else if (K != 26) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                ServiceOptions.b builder = (this.f13969a & 2) != 0 ? this.f13972d.toBuilder() : null;
                                ServiceOptions serviceOptions = (ServiceOptions) nVar.A(ServiceOptions.f13981g, yVar);
                                this.f13972d = serviceOptions;
                                if (builder != null) {
                                    builder.A(serviceOptions);
                                    this.f13972d = builder.buildPartial();
                                }
                                this.f13969a |= 2;
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11 & true) {
                        this.f13971c = Collections.unmodifiableList(this.f13971c);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.f13971c = Collections.unmodifiableList(this.f13971c);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ServiceOptions extends GeneratedMessageV3.ExtendableMessage<ServiceOptions> implements MessageOrBuilder {

        /* renamed from: f  reason: collision with root package name */
        private static final ServiceOptions f13980f = new ServiceOptions();
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        public static final j1<ServiceOptions> f13981g = new a();

        /* renamed from: b  reason: collision with root package name */
        private int f13982b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f13983c;

        /* renamed from: d  reason: collision with root package name */
        private List<UninterpretedOption> f13984d;

        /* renamed from: e  reason: collision with root package name */
        private byte f13985e;

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<ServiceOptions> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public ServiceOptions parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new ServiceOptions(nVar, yVar);
            }
        }

        public static b A(ServiceOptions serviceOptions) {
            return f13980f.toBuilder().A(serviceOptions);
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.M;
        }

        public static ServiceOptions q() {
            return f13980f;
        }

        public static b z() {
            return f13980f.toBuilder();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: B */
        public b newBuilderForType() {
            return z();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: C */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: D */
        public b toBuilder() {
            if (this == f13980f) {
                return new b();
            }
            return new b().A(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ServiceOptions)) {
                return super.equals(obj);
            }
            ServiceOptions serviceOptions = (ServiceOptions) obj;
            if (y() != serviceOptions.y()) {
                return false;
            }
            if ((!y() || s() == serviceOptions.s()) && v().equals(serviceOptions.v()) && this.unknownFields.equals(serviceOptions.unknownFields) && f().equals(serviceOptions.f())) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<ServiceOptions> getParserForType() {
            return f13981g;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10;
            int i11 = this.memoizedSize;
            if (i11 != -1) {
                return i11;
            }
            if ((this.f13982b & 1) != 0) {
                i10 = CodedOutputStream.e(33, this.f13983c);
            } else {
                i10 = 0;
            }
            for (int i12 = 0; i12 < this.f13984d.size(); i12++) {
                i10 += CodedOutputStream.G(999, this.f13984d.get(i12));
            }
            int e10 = i10 + e() + this.unknownFields.getSerializedSize();
            this.memoizedSize = e10;
            return e10;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (y()) {
                hashCode = (((hashCode * 37) + 33) * 53) + i0.d(s());
            }
            if (u() > 0) {
                hashCode = (((hashCode * 37) + 999) * 53) + v().hashCode();
            }
            int hashFields = (AbstractMessage.hashFields(hashCode, f()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashFields;
            return hashFields;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.N.d(ServiceOptions.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.ExtendableMessage, com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13985e;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < u(); i10++) {
                if (!t(i10).isInitialized()) {
                    this.f13985e = (byte) 0;
                    return false;
                }
            }
            if (!d()) {
                this.f13985e = (byte) 0;
                return false;
            }
            this.f13985e = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new ServiceOptions();
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: r */
        public ServiceOptions mo4630getDefaultInstanceForType() {
            return f13980f;
        }

        public boolean s() {
            return this.f13983c;
        }

        public UninterpretedOption t(int i10) {
            return this.f13984d.get(i10);
        }

        public int u() {
            return this.f13984d.size();
        }

        public List<UninterpretedOption> v() {
            return this.f13984d;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            GeneratedMessageV3.ExtendableMessage<MessageType>.a g10 = g();
            if ((this.f13982b & 1) != 0) {
                codedOutputStream.n0(33, this.f13983c);
            }
            for (int i10 = 0; i10 < this.f13984d.size(); i10++) {
                codedOutputStream.L0(999, this.f13984d.get(i10));
            }
            g10.a(536870912, codedOutputStream);
            this.unknownFields.writeTo(codedOutputStream);
        }

        public boolean y() {
            if ((this.f13982b & 1) != 0) {
                return true;
            }
            return false;
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.d<ServiceOptions, b> implements MessageOrBuilder {

            /* renamed from: b  reason: collision with root package name */
            private int f13986b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f13987c;

            /* renamed from: d  reason: collision with root package name */
            private List<UninterpretedOption> f13988d;

            /* renamed from: e  reason: collision with root package name */
            private p1<UninterpretedOption, UninterpretedOption.b, Object> f13989e;

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    y();
                }
            }

            private void u() {
                if ((this.f13986b & 2) == 0) {
                    this.f13988d = new ArrayList(this.f13988d);
                    this.f13986b |= 2;
                }
            }

            private p1<UninterpretedOption, UninterpretedOption.b, Object> y() {
                boolean z10;
                if (this.f13989e == null) {
                    List<UninterpretedOption> list = this.f13988d;
                    if ((this.f13986b & 2) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f13989e = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f13988d = null;
                }
                return this.f13989e;
            }

            public b A(ServiceOptions serviceOptions) {
                if (serviceOptions == ServiceOptions.q()) {
                    return this;
                }
                if (serviceOptions.y()) {
                    D(serviceOptions.s());
                }
                if (this.f13989e == null) {
                    if (!serviceOptions.f13984d.isEmpty()) {
                        if (this.f13988d.isEmpty()) {
                            this.f13988d = serviceOptions.f13984d;
                            this.f13986b &= -3;
                        } else {
                            u();
                            this.f13988d.addAll(serviceOptions.f13984d);
                        }
                        onChanged();
                    }
                } else if (!serviceOptions.f13984d.isEmpty()) {
                    if (this.f13989e.t()) {
                        this.f13989e.h();
                        p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = null;
                        this.f13989e = null;
                        this.f13988d = serviceOptions.f13984d;
                        this.f13986b &= -3;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = y();
                        }
                        this.f13989e = p1Var;
                    } else {
                        this.f13989e.a(serviceOptions.f13984d);
                    }
                }
                j(serviceOptions);
                mergeUnknownFields(serviceOptions.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: B */
            public b mergeFrom(Message message) {
                if (message instanceof ServiceOptions) {
                    return A((ServiceOptions) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: C */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            public b D(boolean z10) {
                this.f13986b |= 1;
                this.f13987c = z10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: E */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: F */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: G */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.M;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.N.d(ServiceOptions.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d, com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < x(); i10++) {
                    if (!w(i10).isInitialized()) {
                        return false;
                    }
                }
                if (!i()) {
                    return false;
                }
                return true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: n */
            public b b(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            public ServiceOptions build() {
                ServiceOptions buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public ServiceOptions buildPartial() {
                ServiceOptions serviceOptions = new ServiceOptions(this);
                int i10 = 1;
                if ((this.f13986b & 1) != 0) {
                    serviceOptions.f13983c = this.f13987c;
                } else {
                    i10 = 0;
                }
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13989e;
                if (p1Var != null) {
                    serviceOptions.f13984d = p1Var.f();
                } else {
                    if ((this.f13986b & 2) != 0) {
                        this.f13988d = Collections.unmodifiableList(this.f13988d);
                        this.f13986b &= -3;
                    }
                    serviceOptions.f13984d = this.f13988d;
                }
                serviceOptions.f13982b = i10;
                onBuilt();
                return serviceOptions;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: q */
            public b e() {
                super.clear();
                this.f13987c = false;
                this.f13986b &= -2;
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13989e;
                if (p1Var == null) {
                    this.f13988d = Collections.emptyList();
                    this.f13986b &= -3;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.d
            /* renamed from: r */
            public b f(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: t */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: v */
            public ServiceOptions mo4630getDefaultInstanceForType() {
                return ServiceOptions.q();
            }

            public UninterpretedOption w(int i10) {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13989e;
                if (p1Var == null) {
                    return this.f13988d.get(i10);
                }
                return p1Var.n(i10);
            }

            public int x() {
                p1<UninterpretedOption, UninterpretedOption.b, Object> p1Var = this.f13989e;
                if (p1Var == null) {
                    return this.f13988d.size();
                }
                return p1Var.m();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: z */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.ServiceOptions.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$ServiceOptions> r1 = com.explorestack.protobuf.DescriptorProtos.ServiceOptions.f13981g     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$ServiceOptions r3 = (com.explorestack.protobuf.DescriptorProtos.ServiceOptions) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.A(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$ServiceOptions r4 = (com.explorestack.protobuf.DescriptorProtos.ServiceOptions) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.A(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.ServiceOptions.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$ServiceOptions$b");
            }

            private b() {
                this.f13988d = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f13988d = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private ServiceOptions(GeneratedMessageV3.d<ServiceOptions, ?> dVar) {
            super(dVar);
            this.f13985e = (byte) -1;
        }

        private ServiceOptions() {
            this.f13985e = (byte) -1;
            this.f13984d = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private ServiceOptions(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        int K = nVar.K();
                        if (K != 0) {
                            if (K == 264) {
                                this.f13982b |= 1;
                                this.f13983c = nVar.q();
                            } else if (K != 7994) {
                                if (!parseUnknownField(nVar, g10, yVar, K)) {
                                }
                            } else {
                                if (!(z11 & true)) {
                                    this.f13984d = new ArrayList();
                                    z11 = true;
                                }
                                this.f13984d.add(nVar.A(UninterpretedOption.f14015k, yVar));
                            }
                        }
                        z10 = true;
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(this);
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11 & true) {
                        this.f13984d = Collections.unmodifiableList(this.f13984d);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11 & true) {
                this.f13984d = Collections.unmodifiableList(this.f13984d);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class SourceCodeInfo extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: c  reason: collision with root package name */
        private static final SourceCodeInfo f13990c = new SourceCodeInfo();
        @Deprecated

        /* renamed from: d  reason: collision with root package name */
        public static final j1<SourceCodeInfo> f13991d = new a();

        /* renamed from: a  reason: collision with root package name */
        private List<Location> f13992a;

        /* renamed from: b  reason: collision with root package name */
        private byte f13993b;

        /* loaded from: classes3.dex */
        public static final class Location extends GeneratedMessageV3 implements MessageOrBuilder {

            /* renamed from: j  reason: collision with root package name */
            private static final Location f13994j = new Location();
            @Deprecated

            /* renamed from: k  reason: collision with root package name */
            public static final j1<Location> f13995k = new a();

            /* renamed from: a  reason: collision with root package name */
            private int f13996a;

            /* renamed from: b  reason: collision with root package name */
            private i0.g f13997b;

            /* renamed from: c  reason: collision with root package name */
            private int f13998c;

            /* renamed from: d  reason: collision with root package name */
            private i0.g f13999d;

            /* renamed from: e  reason: collision with root package name */
            private int f14000e;

            /* renamed from: f  reason: collision with root package name */
            private volatile Object f14001f;

            /* renamed from: g  reason: collision with root package name */
            private volatile Object f14002g;

            /* renamed from: h  reason: collision with root package name */
            private n0 f14003h;

            /* renamed from: i  reason: collision with root package name */
            private byte f14004i;

            /* loaded from: classes3.dex */
            static class a extends com.explorestack.protobuf.b<Location> {
                a() {
                }

                @Override // com.explorestack.protobuf.j1
                /* renamed from: a */
                public Location parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new Location(nVar, yVar);
                }
            }

            public static b F() {
                return f13994j.toBuilder();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.W;
            }

            public static Location r() {
                return f13994j;
            }

            public int A() {
                return this.f13999d.size();
            }

            public List<Integer> B() {
                return this.f13999d;
            }

            public String C() {
                Object obj = this.f14002g;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.f14002g = stringUtf8;
                }
                return stringUtf8;
            }

            public boolean D() {
                if ((this.f13996a & 1) != 0) {
                    return true;
                }
                return false;
            }

            public boolean E() {
                if ((this.f13996a & 2) != 0) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: G */
            public b newBuilderForType() {
                return F();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            /* renamed from: H */
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: I */
            public b toBuilder() {
                if (this == f13994j) {
                    return new b();
                }
                return new b().o(this);
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Location)) {
                    return super.equals(obj);
                }
                Location location = (Location) obj;
                if (!z().equals(location.z()) || !B().equals(location.B()) || D() != location.D()) {
                    return false;
                }
                if ((D() && !t().equals(location.t())) || E() != location.E()) {
                    return false;
                }
                if ((!E() || C().equals(location.C())) && v().equals(location.v()) && this.unknownFields.equals(location.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<Location> getParserForType() {
                return f13995k;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                int i12 = 0;
                for (int i13 = 0; i13 < this.f13997b.size(); i13++) {
                    i12 += CodedOutputStream.y(this.f13997b.getInt(i13));
                }
                if (!z().isEmpty()) {
                    i10 = i12 + 1 + CodedOutputStream.y(i12);
                } else {
                    i10 = i12;
                }
                this.f13998c = i12;
                int i14 = 0;
                for (int i15 = 0; i15 < this.f13999d.size(); i15++) {
                    i14 += CodedOutputStream.y(this.f13999d.getInt(i15));
                }
                int i16 = i10 + i14;
                if (!B().isEmpty()) {
                    i16 = i16 + 1 + CodedOutputStream.y(i14);
                }
                this.f14000e = i14;
                if ((this.f13996a & 1) != 0) {
                    i16 += GeneratedMessageV3.computeStringSize(3, this.f14001f);
                }
                if ((this.f13996a & 2) != 0) {
                    i16 += GeneratedMessageV3.computeStringSize(4, this.f14002g);
                }
                int i17 = 0;
                for (int i18 = 0; i18 < this.f14003h.size(); i18++) {
                    i17 += GeneratedMessageV3.computeStringSizeNoTag(this.f14003h.getRaw(i18));
                }
                int size = i16 + i17 + v().size() + this.unknownFields.getSerializedSize();
                this.memoizedSize = size;
                return size;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (y() > 0) {
                    hashCode = (((hashCode * 37) + 1) * 53) + z().hashCode();
                }
                if (A() > 0) {
                    hashCode = (((hashCode * 37) + 2) * 53) + B().hashCode();
                }
                if (D()) {
                    hashCode = (((hashCode * 37) + 3) * 53) + t().hashCode();
                }
                if (E()) {
                    hashCode = (((hashCode * 37) + 4) * 53) + C().hashCode();
                }
                if (u() > 0) {
                    hashCode = (((hashCode * 37) + 6) * 53) + v().hashCode();
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.X.d(Location.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.f14004i;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.f14004i = (byte) 1;
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new Location();
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: s */
            public Location mo4630getDefaultInstanceForType() {
                return f13994j;
            }

            public String t() {
                Object obj = this.f14001f;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.f14001f = stringUtf8;
                }
                return stringUtf8;
            }

            public int u() {
                return this.f14003h.size();
            }

            public m1 v() {
                return this.f14003h;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                if (z().size() > 0) {
                    codedOutputStream.d1(10);
                    codedOutputStream.d1(this.f13998c);
                }
                for (int i10 = 0; i10 < this.f13997b.size(); i10++) {
                    codedOutputStream.I0(this.f13997b.getInt(i10));
                }
                if (B().size() > 0) {
                    codedOutputStream.d1(18);
                    codedOutputStream.d1(this.f14000e);
                }
                for (int i11 = 0; i11 < this.f13999d.size(); i11++) {
                    codedOutputStream.I0(this.f13999d.getInt(i11));
                }
                if ((this.f13996a & 1) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.f14001f);
                }
                if ((this.f13996a & 2) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 4, this.f14002g);
                }
                for (int i12 = 0; i12 < this.f14003h.size(); i12++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 6, this.f14003h.getRaw(i12));
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            public int y() {
                return this.f13997b.size();
            }

            public List<Integer> z() {
                return this.f13997b;
            }

            /* loaded from: classes3.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

                /* renamed from: a  reason: collision with root package name */
                private int f14005a;

                /* renamed from: b  reason: collision with root package name */
                private i0.g f14006b;

                /* renamed from: c  reason: collision with root package name */
                private i0.g f14007c;

                /* renamed from: d  reason: collision with root package name */
                private Object f14008d;

                /* renamed from: e  reason: collision with root package name */
                private Object f14009e;

                /* renamed from: f  reason: collision with root package name */
                private n0 f14010f;

                private void j() {
                    if ((this.f14005a & 16) == 0) {
                        this.f14010f = new m0(this.f14010f);
                        this.f14005a |= 16;
                    }
                }

                private void k() {
                    if ((this.f14005a & 1) == 0) {
                        this.f14006b = GeneratedMessageV3.mutableCopy(this.f14006b);
                        this.f14005a |= 1;
                    }
                }

                private void l() {
                    if ((this.f14005a & 2) == 0) {
                        this.f14007c = GeneratedMessageV3.mutableCopy(this.f14007c);
                        this.f14005a |= 2;
                    }
                }

                private void maybeForceBuilderInitialization() {
                    boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: a */
                public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: b */
                public Location build() {
                    Location buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: c */
                public Location buildPartial() {
                    int i10;
                    Location location = new Location(this);
                    int i11 = this.f14005a;
                    if ((i11 & 1) != 0) {
                        this.f14006b.makeImmutable();
                        this.f14005a &= -2;
                    }
                    location.f13997b = this.f14006b;
                    if ((this.f14005a & 2) != 0) {
                        this.f14007c.makeImmutable();
                        this.f14005a &= -3;
                    }
                    location.f13999d = this.f14007c;
                    if ((i11 & 4) != 0) {
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    location.f14001f = this.f14008d;
                    if ((i11 & 8) != 0) {
                        i10 |= 2;
                    }
                    location.f14002g = this.f14009e;
                    if ((this.f14005a & 16) != 0) {
                        this.f14010f = this.f14010f.getUnmodifiableView();
                        this.f14005a &= -17;
                    }
                    location.f14003h = this.f14010f;
                    location.f13996a = i10;
                    onBuilt();
                    return location;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: e */
                public b clear() {
                    super.clear();
                    this.f14006b = GeneratedMessageV3.emptyIntList();
                    this.f14005a &= -2;
                    this.f14007c = GeneratedMessageV3.emptyIntList();
                    int i10 = this.f14005a;
                    this.f14008d = "";
                    this.f14009e = "";
                    this.f14005a = i10 & (-15);
                    this.f14010f = m0.f14459d;
                    this.f14005a = i10 & (-31);
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: f */
                public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (b) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: g */
                public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (b) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return DescriptorProtos.W;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: i */
                public b mo4628clone() {
                    return (b) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return DescriptorProtos.X.d(Location.class, b.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: m */
                public Location mo4630getDefaultInstanceForType() {
                    return Location.r();
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: n */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.DescriptorProtos.SourceCodeInfo.Location.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$SourceCodeInfo$Location> r1 = com.explorestack.protobuf.DescriptorProtos.SourceCodeInfo.Location.f13995k     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        com.explorestack.protobuf.DescriptorProtos$SourceCodeInfo$Location r3 = (com.explorestack.protobuf.DescriptorProtos.SourceCodeInfo.Location) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        if (r3 == 0) goto Le
                        r2.o(r3)
                    Le:
                        return r2
                    Lf:
                        r3 = move-exception
                        goto L1f
                    L11:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                        com.explorestack.protobuf.DescriptorProtos$SourceCodeInfo$Location r4 = (com.explorestack.protobuf.DescriptorProtos.SourceCodeInfo.Location) r4     // Catch: java.lang.Throwable -> Lf
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                        throw r3     // Catch: java.lang.Throwable -> L1d
                    L1d:
                        r3 = move-exception
                        r0 = r4
                    L1f:
                        if (r0 == 0) goto L24
                        r2.o(r0)
                    L24:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.SourceCodeInfo.Location.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$SourceCodeInfo$Location$b");
                }

                public b o(Location location) {
                    if (location == Location.r()) {
                        return this;
                    }
                    if (!location.f13997b.isEmpty()) {
                        if (this.f14006b.isEmpty()) {
                            this.f14006b = location.f13997b;
                            this.f14005a &= -2;
                        } else {
                            k();
                            this.f14006b.addAll(location.f13997b);
                        }
                        onChanged();
                    }
                    if (!location.f13999d.isEmpty()) {
                        if (this.f14007c.isEmpty()) {
                            this.f14007c = location.f13999d;
                            this.f14005a &= -3;
                        } else {
                            l();
                            this.f14007c.addAll(location.f13999d);
                        }
                        onChanged();
                    }
                    if (location.D()) {
                        this.f14005a |= 4;
                        this.f14008d = location.f14001f;
                        onChanged();
                    }
                    if (location.E()) {
                        this.f14005a |= 8;
                        this.f14009e = location.f14002g;
                        onChanged();
                    }
                    if (!location.f14003h.isEmpty()) {
                        if (this.f14010f.isEmpty()) {
                            this.f14010f = location.f14003h;
                            this.f14005a &= -17;
                        } else {
                            j();
                            this.f14010f.addAll(location.f14003h);
                        }
                        onChanged();
                    }
                    mergeUnknownFields(location.unknownFields);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: p */
                public b mergeFrom(Message message) {
                    if (message instanceof Location) {
                        return o((Location) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: q */
                public final b mergeUnknownFields(j2 j2Var) {
                    return (b) super.mergeUnknownFields(j2Var);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: r */
                public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.setField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: s */
                public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: t */
                public final b setUnknownFields(j2 j2Var) {
                    return (b) super.setUnknownFields(j2Var);
                }

                private b() {
                    this.f14006b = GeneratedMessageV3.emptyIntList();
                    this.f14007c = GeneratedMessageV3.emptyIntList();
                    this.f14008d = "";
                    this.f14009e = "";
                    this.f14010f = m0.f14459d;
                    maybeForceBuilderInitialization();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f14006b = GeneratedMessageV3.emptyIntList();
                    this.f14007c = GeneratedMessageV3.emptyIntList();
                    this.f14008d = "";
                    this.f14009e = "";
                    this.f14010f = m0.f14459d;
                    maybeForceBuilderInitialization();
                }
            }

            private Location(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.f13998c = -1;
                this.f14000e = -1;
                this.f14004i = (byte) -1;
            }

            private Location() {
                this.f13998c = -1;
                this.f14000e = -1;
                this.f14004i = (byte) -1;
                this.f13997b = GeneratedMessageV3.emptyIntList();
                this.f13999d = GeneratedMessageV3.emptyIntList();
                this.f14001f = "";
                this.f14002g = "";
                this.f14003h = m0.f14459d;
            }

            private Location(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                boolean z11 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 8) {
                                    if (!(z11 & true)) {
                                        this.f13997b = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.f13997b.addInt(nVar.y());
                                } else if (K == 10) {
                                    int p10 = nVar.p(nVar.C());
                                    if (!(z11 & true) && nVar.d() > 0) {
                                        this.f13997b = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (nVar.d() > 0) {
                                        this.f13997b.addInt(nVar.y());
                                    }
                                    nVar.o(p10);
                                } else if (K == 16) {
                                    if (!(z11 & true)) {
                                        this.f13999d = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    this.f13999d.addInt(nVar.y());
                                } else if (K == 18) {
                                    int p11 = nVar.p(nVar.C());
                                    if (!(z11 & true) && nVar.d() > 0) {
                                        this.f13999d = GeneratedMessageV3.newIntList();
                                        z11 |= true;
                                    }
                                    while (nVar.d() > 0) {
                                        this.f13999d.addInt(nVar.y());
                                    }
                                    nVar.o(p11);
                                } else if (K == 26) {
                                    ByteString r10 = nVar.r();
                                    this.f13996a = 1 | this.f13996a;
                                    this.f14001f = r10;
                                } else if (K == 34) {
                                    ByteString r11 = nVar.r();
                                    this.f13996a |= 2;
                                    this.f14002g = r11;
                                } else if (K != 50) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    ByteString r12 = nVar.r();
                                    if (!(z11 & true)) {
                                        this.f14003h = new m0();
                                        z11 |= true;
                                    }
                                    this.f14003h.b(r12);
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        if (z11 & true) {
                            this.f13997b.makeImmutable();
                        }
                        if (z11 & true) {
                            this.f13999d.makeImmutable();
                        }
                        if (z11 & true) {
                            this.f14003h = this.f14003h.getUnmodifiableView();
                        }
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                if (z11 & true) {
                    this.f13997b.makeImmutable();
                }
                if (z11 & true) {
                    this.f13999d.makeImmutable();
                }
                if (z11 & true) {
                    this.f14003h = this.f14003h.getUnmodifiableView();
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }
        }

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<SourceCodeInfo> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public SourceCodeInfo parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new SourceCodeInfo(nVar, yVar);
            }
        }

        public static SourceCodeInfo e() {
            return f13990c;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.U;
        }

        public static b i() {
            return f13990c.toBuilder();
        }

        public static b j(SourceCodeInfo sourceCodeInfo) {
            return f13990c.toBuilder().n(sourceCodeInfo);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof SourceCodeInfo)) {
                return super.equals(obj);
            }
            SourceCodeInfo sourceCodeInfo = (SourceCodeInfo) obj;
            if (h().equals(sourceCodeInfo.h()) && this.unknownFields.equals(sourceCodeInfo.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: f */
        public SourceCodeInfo mo4630getDefaultInstanceForType() {
            return f13990c;
        }

        public int g() {
            return this.f13992a.size();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<SourceCodeInfo> getParserForType() {
            return f13991d;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.f13992a.size(); i12++) {
                i11 += CodedOutputStream.G(1, this.f13992a.get(i12));
            }
            int serializedSize = i11 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        public List<Location> h() {
            return this.f13992a;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (g() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + h().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.V.d(SourceCodeInfo.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f13993b;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.f13993b = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: k */
        public b newBuilderForType() {
            return i();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: n */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new SourceCodeInfo();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: q */
        public b toBuilder() {
            if (this == f13990c) {
                return new b();
            }
            return new b().n(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i10 = 0; i10 < this.f13992a.size(); i10++) {
                codedOutputStream.L0(1, this.f13992a.get(i10));
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f14011a;

            /* renamed from: b  reason: collision with root package name */
            private List<Location> f14012b;

            /* renamed from: c  reason: collision with root package name */
            private p1<Location, Location.b, Object> f14013c;

            private void j() {
                if ((this.f14011a & 1) == 0) {
                    this.f14012b = new ArrayList(this.f14012b);
                    this.f14011a |= 1;
                }
            }

            private p1<Location, Location.b, Object> l() {
                if (this.f14013c == null) {
                    List<Location> list = this.f14012b;
                    boolean z10 = true;
                    if ((this.f14011a & 1) == 0) {
                        z10 = false;
                    }
                    this.f14013c = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f14012b = null;
                }
                return this.f14013c;
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    l();
                }
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: a */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public SourceCodeInfo build() {
                SourceCodeInfo buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public SourceCodeInfo buildPartial() {
                SourceCodeInfo sourceCodeInfo = new SourceCodeInfo(this);
                int i10 = this.f14011a;
                p1<Location, Location.b, Object> p1Var = this.f14013c;
                if (p1Var != null) {
                    sourceCodeInfo.f13992a = p1Var.f();
                } else {
                    if ((i10 & 1) != 0) {
                        this.f14012b = Collections.unmodifiableList(this.f14012b);
                        this.f14011a &= -2;
                    }
                    sourceCodeInfo.f13992a = this.f14012b;
                }
                onBuilt();
                return sourceCodeInfo;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public b clear() {
                super.clear();
                p1<Location, Location.b, Object> p1Var = this.f14013c;
                if (p1Var == null) {
                    this.f14012b = Collections.emptyList();
                    this.f14011a &= -2;
                } else {
                    p1Var.g();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.U;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.V.d(SourceCodeInfo.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: k */
            public SourceCodeInfo mo4630getDefaultInstanceForType() {
                return SourceCodeInfo.e();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: m */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.SourceCodeInfo.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$SourceCodeInfo> r1 = com.explorestack.protobuf.DescriptorProtos.SourceCodeInfo.f13991d     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$SourceCodeInfo r3 = (com.explorestack.protobuf.DescriptorProtos.SourceCodeInfo) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.n(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$SourceCodeInfo r4 = (com.explorestack.protobuf.DescriptorProtos.SourceCodeInfo) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.n(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.SourceCodeInfo.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$SourceCodeInfo$b");
            }

            public b n(SourceCodeInfo sourceCodeInfo) {
                if (sourceCodeInfo == SourceCodeInfo.e()) {
                    return this;
                }
                if (this.f14013c == null) {
                    if (!sourceCodeInfo.f13992a.isEmpty()) {
                        if (this.f14012b.isEmpty()) {
                            this.f14012b = sourceCodeInfo.f13992a;
                            this.f14011a &= -2;
                        } else {
                            j();
                            this.f14012b.addAll(sourceCodeInfo.f13992a);
                        }
                        onChanged();
                    }
                } else if (!sourceCodeInfo.f13992a.isEmpty()) {
                    if (this.f14013c.t()) {
                        this.f14013c.h();
                        p1<Location, Location.b, Object> p1Var = null;
                        this.f14013c = null;
                        this.f14012b = sourceCodeInfo.f13992a;
                        this.f14011a &= -2;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = l();
                        }
                        this.f14013c = p1Var;
                    } else {
                        this.f14013c.a(sourceCodeInfo.f13992a);
                    }
                }
                mergeUnknownFields(sourceCodeInfo.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            public b mergeFrom(Message message) {
                if (message instanceof SourceCodeInfo) {
                    return n((SourceCodeInfo) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: p */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: q */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: r */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: s */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            private b() {
                this.f14012b = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f14012b = Collections.emptyList();
                maybeForceBuilderInitialization();
            }
        }

        private SourceCodeInfo(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f13993b = (byte) -1;
        }

        private SourceCodeInfo() {
            this.f13993b = (byte) -1;
            this.f13992a = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private SourceCodeInfo(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K != 10) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    if (!z11) {
                                        this.f13992a = new ArrayList();
                                        z11 = true;
                                    }
                                    this.f13992a.add(nVar.A(Location.f13995k, yVar));
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11) {
                        this.f13992a = Collections.unmodifiableList(this.f13992a);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11) {
                this.f13992a = Collections.unmodifiableList(this.f13992a);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    /* loaded from: classes3.dex */
    public static final class UninterpretedOption extends GeneratedMessageV3 implements MessageOrBuilder {

        /* renamed from: j  reason: collision with root package name */
        private static final UninterpretedOption f14014j = new UninterpretedOption();
        @Deprecated

        /* renamed from: k  reason: collision with root package name */
        public static final j1<UninterpretedOption> f14015k = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f14016a;

        /* renamed from: b  reason: collision with root package name */
        private List<NamePart> f14017b;

        /* renamed from: c  reason: collision with root package name */
        private volatile Object f14018c;

        /* renamed from: d  reason: collision with root package name */
        private long f14019d;

        /* renamed from: e  reason: collision with root package name */
        private long f14020e;

        /* renamed from: f  reason: collision with root package name */
        private double f14021f;

        /* renamed from: g  reason: collision with root package name */
        private ByteString f14022g;

        /* renamed from: h  reason: collision with root package name */
        private volatile Object f14023h;

        /* renamed from: i  reason: collision with root package name */
        private byte f14024i;

        /* loaded from: classes3.dex */
        public static final class NamePart extends GeneratedMessageV3 implements MessageOrBuilder {

            /* renamed from: e  reason: collision with root package name */
            private static final NamePart f14025e = new NamePart();
            @Deprecated

            /* renamed from: f  reason: collision with root package name */
            public static final j1<NamePart> f14026f = new a();

            /* renamed from: a  reason: collision with root package name */
            private int f14027a;

            /* renamed from: b  reason: collision with root package name */
            private volatile Object f14028b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f14029c;

            /* renamed from: d  reason: collision with root package name */
            private byte f14030d;

            /* loaded from: classes3.dex */
            static class a extends com.explorestack.protobuf.b<NamePart> {
                a() {
                }

                @Override // com.explorestack.protobuf.j1
                /* renamed from: a */
                public NamePart parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                    return new NamePart(nVar, yVar);
                }
            }

            public static NamePart g() {
                return f14025e;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return DescriptorProtos.S;
            }

            public static b q() {
                return f14025e.toBuilder();
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof NamePart)) {
                    return super.equals(obj);
                }
                NamePart namePart = (NamePart) obj;
                if (n() != namePart.n()) {
                    return false;
                }
                if ((n() && !j().equals(namePart.j())) || k() != namePart.k()) {
                    return false;
                }
                if ((!k() || i() == namePart.i()) && this.unknownFields.equals(namePart.unknownFields)) {
                    return true;
                }
                return false;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public j1<NamePart> getParserForType() {
                return f14026f;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public int getSerializedSize() {
                int i10;
                int i11 = this.memoizedSize;
                if (i11 != -1) {
                    return i11;
                }
                if ((this.f14027a & 1) != 0) {
                    i10 = GeneratedMessageV3.computeStringSize(1, this.f14028b);
                } else {
                    i10 = 0;
                }
                if ((this.f14027a & 2) != 0) {
                    i10 += CodedOutputStream.e(2, this.f14029c);
                }
                int serializedSize = i10 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final j2 getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: h */
            public NamePart mo4630getDefaultInstanceForType() {
                return f14025e;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (n()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + j().hashCode();
                }
                if (k()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + i0.d(i());
                }
                int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            public boolean i() {
                return this.f14029c;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.T.d(NamePart.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                byte b10 = this.f14030d;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                if (!n()) {
                    this.f14030d = (byte) 0;
                    return false;
                } else if (!k()) {
                    this.f14030d = (byte) 0;
                    return false;
                } else {
                    this.f14030d = (byte) 1;
                    return true;
                }
            }

            public String j() {
                Object obj = this.f14028b;
                if (obj instanceof String) {
                    return (String) obj;
                }
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    this.f14028b = stringUtf8;
                }
                return stringUtf8;
            }

            public boolean k() {
                if ((this.f14027a & 2) != 0) {
                    return true;
                }
                return false;
            }

            public boolean n() {
                if ((this.f14027a & 1) != 0) {
                    return true;
                }
                return false;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public Object newInstance(GeneratedMessageV3.f fVar) {
                return new NamePart();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: r */
            public b newBuilderForType() {
                return q();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.explorestack.protobuf.GeneratedMessageV3
            /* renamed from: s */
            public b newBuilderForType(GeneratedMessageV3.c cVar) {
                return new b(cVar);
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            /* renamed from: t */
            public b toBuilder() {
                if (this == f14025e) {
                    return new b();
                }
                return new b().n(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if ((this.f14027a & 1) != 0) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.f14028b);
                }
                if ((this.f14027a & 2) != 0) {
                    codedOutputStream.n0(2, this.f14029c);
                }
                this.unknownFields.writeTo(codedOutputStream);
            }

            /* loaded from: classes3.dex */
            public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

                /* renamed from: a  reason: collision with root package name */
                private int f14031a;

                /* renamed from: b  reason: collision with root package name */
                private Object f14032b;

                /* renamed from: c  reason: collision with root package name */
                private boolean f14033c;

                private void maybeForceBuilderInitialization() {
                    boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: a */
                public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: b */
                public NamePart build() {
                    NamePart buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: c */
                public NamePart buildPartial() {
                    int i10;
                    NamePart namePart = new NamePart(this);
                    int i11 = this.f14031a;
                    if ((i11 & 1) != 0) {
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    namePart.f14028b = this.f14032b;
                    if ((i11 & 2) != 0) {
                        namePart.f14029c = this.f14033c;
                        i10 |= 2;
                    }
                    namePart.f14027a = i10;
                    onBuilt();
                    return namePart;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: e */
                public b clear() {
                    super.clear();
                    this.f14032b = "";
                    int i10 = this.f14031a;
                    this.f14033c = false;
                    this.f14031a = i10 & (-4);
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: f */
                public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                    return (b) super.clearField(fieldDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: g */
                public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (b) super.clearOneof(oneofDescriptor);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public Descriptors.Descriptor getDescriptorForType() {
                    return DescriptorProtos.S;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
                /* renamed from: i */
                public b mo4628clone() {
                    return (b) super.mo4628clone();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b
                protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                    return DescriptorProtos.T.d(NamePart.class, b.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final boolean isInitialized() {
                    if (!l() || !k()) {
                        return false;
                    }
                    return true;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                /* renamed from: j */
                public NamePart mo4630getDefaultInstanceForType() {
                    return NamePart.g();
                }

                public boolean k() {
                    if ((this.f14031a & 2) != 0) {
                        return true;
                    }
                    return false;
                }

                public boolean l() {
                    if ((this.f14031a & 1) != 0) {
                        return true;
                    }
                    return false;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: m */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public com.explorestack.protobuf.DescriptorProtos.UninterpretedOption.NamePart.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                    /*
                        r2 = this;
                        r0 = 0
                        com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$UninterpretedOption$NamePart> r1 = com.explorestack.protobuf.DescriptorProtos.UninterpretedOption.NamePart.f14026f     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        com.explorestack.protobuf.DescriptorProtos$UninterpretedOption$NamePart r3 = (com.explorestack.protobuf.DescriptorProtos.UninterpretedOption.NamePart) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                        if (r3 == 0) goto Le
                        r2.n(r3)
                    Le:
                        return r2
                    Lf:
                        r3 = move-exception
                        goto L1f
                    L11:
                        r3 = move-exception
                        com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                        com.explorestack.protobuf.DescriptorProtos$UninterpretedOption$NamePart r4 = (com.explorestack.protobuf.DescriptorProtos.UninterpretedOption.NamePart) r4     // Catch: java.lang.Throwable -> Lf
                        java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                        throw r3     // Catch: java.lang.Throwable -> L1d
                    L1d:
                        r3 = move-exception
                        r0 = r4
                    L1f:
                        if (r0 == 0) goto L24
                        r2.n(r0)
                    L24:
                        throw r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.UninterpretedOption.NamePart.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$UninterpretedOption$NamePart$b");
                }

                public b n(NamePart namePart) {
                    if (namePart == NamePart.g()) {
                        return this;
                    }
                    if (namePart.n()) {
                        this.f14031a |= 1;
                        this.f14032b = namePart.f14028b;
                        onChanged();
                    }
                    if (namePart.k()) {
                        r(namePart.i());
                    }
                    mergeUnknownFields(namePart.unknownFields);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: o */
                public b mergeFrom(Message message) {
                    if (message instanceof NamePart) {
                        return n((NamePart) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                /* renamed from: p */
                public final b mergeUnknownFields(j2 j2Var) {
                    return (b) super.mergeUnknownFields(j2Var);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: q */
                public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (b) super.setField(fieldDescriptor, obj);
                }

                public b r(boolean z10) {
                    this.f14031a |= 2;
                    this.f14033c = z10;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: s */
                public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                    return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
                /* renamed from: t */
                public final b setUnknownFields(j2 j2Var) {
                    return (b) super.setUnknownFields(j2Var);
                }

                private b() {
                    this.f14032b = "";
                    maybeForceBuilderInitialization();
                }

                private b(GeneratedMessageV3.c cVar) {
                    super(cVar);
                    this.f14032b = "";
                    maybeForceBuilderInitialization();
                }
            }

            private NamePart(GeneratedMessageV3.b<?> bVar) {
                super(bVar);
                this.f14030d = (byte) -1;
            }

            private NamePart() {
                this.f14030d = (byte) -1;
                this.f14028b = "";
            }

            private NamePart(n nVar, y yVar) throws InvalidProtocolBufferException {
                this();
                yVar.getClass();
                j2.b g10 = j2.g();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 10) {
                                    ByteString r10 = nVar.r();
                                    this.f14027a = 1 | this.f14027a;
                                    this.f14028b = r10;
                                } else if (K != 16) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    this.f14027a |= 2;
                                    this.f14029c = nVar.q();
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        } catch (IOException e11) {
                            throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                        }
                    } catch (Throwable th2) {
                        this.unknownFields = g10.build();
                        makeExtensionsImmutable();
                        throw th2;
                    }
                }
                this.unknownFields = g10.build();
                makeExtensionsImmutable();
            }
        }

        /* loaded from: classes3.dex */
        static class a extends com.explorestack.protobuf.b<UninterpretedOption> {
            a() {
            }

            @Override // com.explorestack.protobuf.j1
            /* renamed from: a */
            public UninterpretedOption parsePartialFrom(n nVar, y yVar) throws InvalidProtocolBufferException {
                return new UninterpretedOption(nVar, yVar);
            }
        }

        public static b J() {
            return f14014j.toBuilder();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return DescriptorProtos.Q;
        }

        public static UninterpretedOption s() {
            return f14014j;
        }

        public List<NamePart> A() {
            return this.f14017b;
        }

        public long B() {
            return this.f14020e;
        }

        public long C() {
            return this.f14019d;
        }

        public ByteString D() {
            return this.f14022g;
        }

        public boolean E() {
            if ((this.f14016a & 32) != 0) {
                return true;
            }
            return false;
        }

        public boolean F() {
            if ((this.f14016a & 8) != 0) {
                return true;
            }
            return false;
        }

        public boolean G() {
            if ((this.f14016a & 1) != 0) {
                return true;
            }
            return false;
        }

        public boolean H() {
            if ((this.f14016a & 4) != 0) {
                return true;
            }
            return false;
        }

        public boolean I() {
            if ((this.f14016a & 2) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: K */
        public b newBuilderForType() {
            return J();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        /* renamed from: L */
        public b newBuilderForType(GeneratedMessageV3.c cVar) {
            return new b(cVar);
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        /* renamed from: M */
        public b toBuilder() {
            if (this == f14014j) {
                return new b();
            }
            return new b().p(this);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof UninterpretedOption)) {
                return super.equals(obj);
            }
            UninterpretedOption uninterpretedOption = (UninterpretedOption) obj;
            if (!A().equals(uninterpretedOption.A()) || G() != uninterpretedOption.G()) {
                return false;
            }
            if ((G() && !v().equals(uninterpretedOption.v())) || I() != uninterpretedOption.I()) {
                return false;
            }
            if ((I() && C() != uninterpretedOption.C()) || H() != uninterpretedOption.H()) {
                return false;
            }
            if ((H() && B() != uninterpretedOption.B()) || F() != uninterpretedOption.F()) {
                return false;
            }
            if ((F() && Double.doubleToLongBits(u()) != Double.doubleToLongBits(uninterpretedOption.u())) || hasStringValue() != uninterpretedOption.hasStringValue()) {
                return false;
            }
            if ((hasStringValue() && !D().equals(uninterpretedOption.D())) || E() != uninterpretedOption.E()) {
                return false;
            }
            if ((!E() || r().equals(uninterpretedOption.r())) && this.unknownFields.equals(uninterpretedOption.unknownFields)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public j1<UninterpretedOption> getParserForType() {
            return f14015k;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.f14017b.size(); i12++) {
                i11 += CodedOutputStream.G(2, this.f14017b.get(i12));
            }
            if ((this.f14016a & 1) != 0) {
                i11 += GeneratedMessageV3.computeStringSize(3, this.f14018c);
            }
            if ((this.f14016a & 2) != 0) {
                i11 += CodedOutputStream.a0(4, this.f14019d);
            }
            if ((this.f14016a & 4) != 0) {
                i11 += CodedOutputStream.z(5, this.f14020e);
            }
            if ((this.f14016a & 8) != 0) {
                i11 += CodedOutputStream.j(6, this.f14021f);
            }
            if ((this.f14016a & 16) != 0) {
                i11 += CodedOutputStream.h(7, this.f14022g);
            }
            if ((this.f14016a & 32) != 0) {
                i11 += GeneratedMessageV3.computeStringSize(8, this.f14023h);
            }
            int serializedSize = i11 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final j2 getUnknownFields() {
            return this.unknownFields;
        }

        public boolean hasStringValue() {
            if ((this.f14016a & 16) != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (z() > 0) {
                hashCode = (((hashCode * 37) + 2) * 53) + A().hashCode();
            }
            if (G()) {
                hashCode = (((hashCode * 37) + 3) * 53) + v().hashCode();
            }
            if (I()) {
                hashCode = (((hashCode * 37) + 4) * 53) + i0.i(C());
            }
            if (H()) {
                hashCode = (((hashCode * 37) + 5) * 53) + i0.i(B());
            }
            if (F()) {
                hashCode = (((hashCode * 37) + 6) * 53) + i0.i(Double.doubleToLongBits(u()));
            }
            if (hasStringValue()) {
                hashCode = (((hashCode * 37) + 7) * 53) + D().hashCode();
            }
            if (E()) {
                hashCode = (((hashCode * 37) + 8) * 53) + r().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
            return DescriptorProtos.R.d(UninterpretedOption.class, b.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        public final boolean isInitialized() {
            byte b10 = this.f14024i;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < z(); i10++) {
                if (!y(i10).isInitialized()) {
                    this.f14024i = (byte) 0;
                    return false;
                }
            }
            this.f14024i = (byte) 1;
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public Object newInstance(GeneratedMessageV3.f fVar) {
            return new UninterpretedOption();
        }

        public String r() {
            Object obj = this.f14023h;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f14023h = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message, com.explorestack.protobuf.MessageOrBuilder
        /* renamed from: t */
        public UninterpretedOption mo4630getDefaultInstanceForType() {
            return f14014j;
        }

        public double u() {
            return this.f14021f;
        }

        public String v() {
            Object obj = this.f14018c;
            if (obj instanceof String) {
                return (String) obj;
            }
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f14018c = stringUtf8;
            }
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            for (int i10 = 0; i10 < this.f14017b.size(); i10++) {
                codedOutputStream.L0(2, this.f14017b.get(i10));
            }
            if ((this.f14016a & 1) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.f14018c);
            }
            if ((this.f14016a & 2) != 0) {
                codedOutputStream.e1(4, this.f14019d);
            }
            if ((this.f14016a & 4) != 0) {
                codedOutputStream.J0(5, this.f14020e);
            }
            if ((this.f14016a & 8) != 0) {
                codedOutputStream.t0(6, this.f14021f);
            }
            if ((this.f14016a & 16) != 0) {
                codedOutputStream.r0(7, this.f14022g);
            }
            if ((this.f14016a & 32) != 0) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.f14023h);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }

        public NamePart y(int i10) {
            return this.f14017b.get(i10);
        }

        public int z() {
            return this.f14017b.size();
        }

        /* loaded from: classes3.dex */
        public static final class b extends GeneratedMessageV3.b<b> implements MessageOrBuilder {

            /* renamed from: a  reason: collision with root package name */
            private int f14034a;

            /* renamed from: b  reason: collision with root package name */
            private List<NamePart> f14035b;

            /* renamed from: c  reason: collision with root package name */
            private p1<NamePart, NamePart.b, Object> f14036c;

            /* renamed from: d  reason: collision with root package name */
            private Object f14037d;

            /* renamed from: e  reason: collision with root package name */
            private long f14038e;

            /* renamed from: f  reason: collision with root package name */
            private long f14039f;

            /* renamed from: g  reason: collision with root package name */
            private double f14040g;

            /* renamed from: h  reason: collision with root package name */
            private ByteString f14041h;

            /* renamed from: i  reason: collision with root package name */
            private Object f14042i;

            private void j() {
                if ((this.f14034a & 1) == 0) {
                    this.f14035b = new ArrayList(this.f14035b);
                    this.f14034a |= 1;
                }
            }

            private void maybeForceBuilderInitialization() {
                if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                    n();
                }
            }

            private p1<NamePart, NamePart.b, Object> n() {
                if (this.f14036c == null) {
                    List<NamePart> list = this.f14035b;
                    boolean z10 = true;
                    if ((this.f14034a & 1) == 0) {
                        z10 = false;
                    }
                    this.f14036c = new p1<>(list, z10, getParentForChildren(), isClean());
                    this.f14035b = null;
                }
                return this.f14036c;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: a */
            public b addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: b */
            public UninterpretedOption build() {
                UninterpretedOption buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractMessage.Builder.newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: c */
            public UninterpretedOption buildPartial() {
                int i10;
                UninterpretedOption uninterpretedOption = new UninterpretedOption(this);
                int i11 = this.f14034a;
                p1<NamePart, NamePart.b, Object> p1Var = this.f14036c;
                if (p1Var != null) {
                    uninterpretedOption.f14017b = p1Var.f();
                } else {
                    if ((i11 & 1) != 0) {
                        this.f14035b = Collections.unmodifiableList(this.f14035b);
                        this.f14034a &= -2;
                    }
                    uninterpretedOption.f14017b = this.f14035b;
                }
                if ((i11 & 2) != 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                uninterpretedOption.f14018c = this.f14037d;
                if ((i11 & 4) != 0) {
                    uninterpretedOption.f14019d = this.f14038e;
                    i10 |= 2;
                }
                if ((i11 & 8) != 0) {
                    uninterpretedOption.f14020e = this.f14039f;
                    i10 |= 4;
                }
                if ((i11 & 16) != 0) {
                    uninterpretedOption.f14021f = this.f14040g;
                    i10 |= 8;
                }
                if ((i11 & 32) != 0) {
                    i10 |= 16;
                }
                uninterpretedOption.f14022g = this.f14041h;
                if ((i11 & 64) != 0) {
                    i10 |= 32;
                }
                uninterpretedOption.f14023h = this.f14042i;
                uninterpretedOption.f14016a = i10;
                onBuilt();
                return uninterpretedOption;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: e */
            public b clear() {
                super.clear();
                p1<NamePart, NamePart.b, Object> p1Var = this.f14036c;
                if (p1Var == null) {
                    this.f14035b = Collections.emptyList();
                    this.f14034a &= -2;
                } else {
                    p1Var.g();
                }
                this.f14037d = "";
                int i10 = this.f14034a;
                this.f14038e = 0L;
                this.f14039f = 0L;
                this.f14040g = 0.0d;
                this.f14034a = i10 & (-31);
                this.f14041h = ByteString.EMPTY;
                this.f14042i = "";
                this.f14034a = i10 & ComposerKt.defaultsKey;
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: f */
            public b clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (b) super.clearField(fieldDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: g */
            public b clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (b) super.clearOneof(oneofDescriptor);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public Descriptors.Descriptor getDescriptorForType() {
                return DescriptorProtos.Q;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a
            /* renamed from: i */
            public b mo4628clone() {
                return (b) super.mo4628clone();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b
            protected GeneratedMessageV3.e internalGetFieldAccessorTable() {
                return DescriptorProtos.R.d(UninterpretedOption.class, b.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < m(); i10++) {
                    if (!l(i10).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            /* renamed from: k */
            public UninterpretedOption mo4630getDefaultInstanceForType() {
                return UninterpretedOption.s();
            }

            public NamePart l(int i10) {
                p1<NamePart, NamePart.b, Object> p1Var = this.f14036c;
                if (p1Var == null) {
                    return this.f14035b.get(i10);
                }
                return p1Var.n(i10);
            }

            public int m() {
                p1<NamePart, NamePart.b, Object> p1Var = this.f14036c;
                if (p1Var == null) {
                    return this.f14035b.size();
                }
                return p1Var.m();
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.a.AbstractC0246a, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: o */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public com.explorestack.protobuf.DescriptorProtos.UninterpretedOption.b mergeFrom(com.explorestack.protobuf.n r3, com.explorestack.protobuf.y r4) throws java.io.IOException {
                /*
                    r2 = this;
                    r0 = 0
                    com.explorestack.protobuf.j1<com.explorestack.protobuf.DescriptorProtos$UninterpretedOption> r1 = com.explorestack.protobuf.DescriptorProtos.UninterpretedOption.f14015k     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    java.lang.Object r3 = r1.parsePartialFrom(r3, r4)     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    com.explorestack.protobuf.DescriptorProtos$UninterpretedOption r3 = (com.explorestack.protobuf.DescriptorProtos.UninterpretedOption) r3     // Catch: java.lang.Throwable -> Lf com.explorestack.protobuf.InvalidProtocolBufferException -> L11
                    if (r3 == 0) goto Le
                    r2.p(r3)
                Le:
                    return r2
                Lf:
                    r3 = move-exception
                    goto L1f
                L11:
                    r3 = move-exception
                    com.explorestack.protobuf.MessageLite r4 = r3.getUnfinishedMessage()     // Catch: java.lang.Throwable -> Lf
                    com.explorestack.protobuf.DescriptorProtos$UninterpretedOption r4 = (com.explorestack.protobuf.DescriptorProtos.UninterpretedOption) r4     // Catch: java.lang.Throwable -> Lf
                    java.io.IOException r3 = r3.unwrapIOException()     // Catch: java.lang.Throwable -> L1d
                    throw r3     // Catch: java.lang.Throwable -> L1d
                L1d:
                    r3 = move-exception
                    r0 = r4
                L1f:
                    if (r0 == 0) goto L24
                    r2.p(r0)
                L24:
                    throw r3
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.DescriptorProtos.UninterpretedOption.b.mergeFrom(com.explorestack.protobuf.n, com.explorestack.protobuf.y):com.explorestack.protobuf.DescriptorProtos$UninterpretedOption$b");
            }

            public b p(UninterpretedOption uninterpretedOption) {
                if (uninterpretedOption == UninterpretedOption.s()) {
                    return this;
                }
                if (this.f14036c == null) {
                    if (!uninterpretedOption.f14017b.isEmpty()) {
                        if (this.f14035b.isEmpty()) {
                            this.f14035b = uninterpretedOption.f14017b;
                            this.f14034a &= -2;
                        } else {
                            j();
                            this.f14035b.addAll(uninterpretedOption.f14017b);
                        }
                        onChanged();
                    }
                } else if (!uninterpretedOption.f14017b.isEmpty()) {
                    if (this.f14036c.t()) {
                        this.f14036c.h();
                        p1<NamePart, NamePart.b, Object> p1Var = null;
                        this.f14036c = null;
                        this.f14035b = uninterpretedOption.f14017b;
                        this.f14034a &= -2;
                        if (GeneratedMessageV3.alwaysUseFieldBuilders) {
                            p1Var = n();
                        }
                        this.f14036c = p1Var;
                    } else {
                        this.f14036c.a(uninterpretedOption.f14017b);
                    }
                }
                if (uninterpretedOption.G()) {
                    this.f14034a |= 2;
                    this.f14037d = uninterpretedOption.f14018c;
                    onChanged();
                }
                if (uninterpretedOption.I()) {
                    v(uninterpretedOption.C());
                }
                if (uninterpretedOption.H()) {
                    u(uninterpretedOption.B());
                }
                if (uninterpretedOption.F()) {
                    s(uninterpretedOption.u());
                }
                if (uninterpretedOption.hasStringValue()) {
                    x(uninterpretedOption.D());
                }
                if (uninterpretedOption.E()) {
                    this.f14034a |= 64;
                    this.f14042i = uninterpretedOption.f14023h;
                    onChanged();
                }
                mergeUnknownFields(uninterpretedOption.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: q */
            public b mergeFrom(Message message) {
                if (message instanceof UninterpretedOption) {
                    return p((UninterpretedOption) message);
                }
                super.mergeFrom(message);
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            /* renamed from: r */
            public final b mergeUnknownFields(j2 j2Var) {
                return (b) super.mergeUnknownFields(j2Var);
            }

            public b s(double d10) {
                this.f14034a |= 16;
                this.f14040g = d10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: t */
            public b setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (b) super.setField(fieldDescriptor, obj);
            }

            public b u(long j10) {
                this.f14034a |= 8;
                this.f14039f = j10;
                onChanged();
                return this;
            }

            public b v(long j10) {
                this.f14034a |= 4;
                this.f14038e = j10;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: w */
            public b setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i10, Object obj) {
                return (b) super.setRepeatedField(fieldDescriptor, i10, obj);
            }

            public b x(ByteString byteString) {
                byteString.getClass();
                this.f14034a |= 32;
                this.f14041h = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.b, com.explorestack.protobuf.Message.Builder
            /* renamed from: y */
            public final b setUnknownFields(j2 j2Var) {
                return (b) super.setUnknownFields(j2Var);
            }

            private b() {
                this.f14035b = Collections.emptyList();
                this.f14037d = "";
                this.f14041h = ByteString.EMPTY;
                this.f14042i = "";
                maybeForceBuilderInitialization();
            }

            private b(GeneratedMessageV3.c cVar) {
                super(cVar);
                this.f14035b = Collections.emptyList();
                this.f14037d = "";
                this.f14041h = ByteString.EMPTY;
                this.f14042i = "";
                maybeForceBuilderInitialization();
            }
        }

        private UninterpretedOption(GeneratedMessageV3.b<?> bVar) {
            super(bVar);
            this.f14024i = (byte) -1;
        }

        private UninterpretedOption() {
            this.f14024i = (byte) -1;
            this.f14017b = Collections.emptyList();
            this.f14018c = "";
            this.f14022g = ByteString.EMPTY;
            this.f14023h = "";
        }

        /* JADX WARN: Multi-variable type inference failed */
        private UninterpretedOption(n nVar, y yVar) throws InvalidProtocolBufferException {
            this();
            yVar.getClass();
            j2.b g10 = j2.g();
            boolean z10 = false;
            boolean z11 = false;
            while (!z10) {
                try {
                    try {
                        try {
                            int K = nVar.K();
                            if (K != 0) {
                                if (K == 18) {
                                    if (!z11) {
                                        this.f14017b = new ArrayList();
                                        z11 = true;
                                    }
                                    this.f14017b.add(nVar.A(NamePart.f14026f, yVar));
                                } else if (K == 26) {
                                    ByteString r10 = nVar.r();
                                    this.f14016a = 1 | this.f14016a;
                                    this.f14018c = r10;
                                } else if (K == 32) {
                                    this.f14016a |= 2;
                                    this.f14019d = nVar.M();
                                } else if (K == 40) {
                                    this.f14016a |= 4;
                                    this.f14020e = nVar.z();
                                } else if (K == 49) {
                                    this.f14016a |= 8;
                                    this.f14021f = nVar.s();
                                } else if (K == 58) {
                                    this.f14016a |= 16;
                                    this.f14022g = nVar.r();
                                } else if (K != 66) {
                                    if (!parseUnknownField(nVar, g10, yVar, K)) {
                                    }
                                } else {
                                    ByteString r11 = nVar.r();
                                    this.f14016a |= 32;
                                    this.f14023h = r11;
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.setUnfinishedMessage(this);
                        }
                    } catch (IOException e11) {
                        throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(this);
                    }
                } catch (Throwable th2) {
                    if (z11) {
                        this.f14017b = Collections.unmodifiableList(this.f14017b);
                    }
                    this.unknownFields = g10.build();
                    makeExtensionsImmutable();
                    throw th2;
                }
            }
            if (z11) {
                this.f14017b = Collections.unmodifiableList(this.f14017b);
            }
            this.unknownFields = g10.build();
            makeExtensionsImmutable();
        }
    }

    static {
        Descriptors.Descriptor descriptor = a0().getMessageTypes().get(0);
        f13601a = descriptor;
        f13603b = new GeneratedMessageV3.e(descriptor, new String[]{"File"});
        Descriptors.Descriptor descriptor2 = a0().getMessageTypes().get(1);
        f13605c = descriptor2;
        f13607d = new GeneratedMessageV3.e(descriptor2, new String[]{"Name", "Package", "Dependency", "PublicDependency", "WeakDependency", "MessageType", "EnumType", "Service", "Extension", "Options", "SourceCodeInfo", "Syntax"});
        Descriptors.Descriptor descriptor3 = a0().getMessageTypes().get(2);
        f13608e = descriptor3;
        f13609f = new GeneratedMessageV3.e(descriptor3, new String[]{"Name", "Field", "Extension", "NestedType", "EnumType", "ExtensionRange", "OneofDecl", "Options", "ReservedRange", "ReservedName"});
        Descriptors.Descriptor descriptor4 = descriptor3.getNestedTypes().get(0);
        f13610g = descriptor4;
        f13611h = new GeneratedMessageV3.e(descriptor4, new String[]{"Start", "End", "Options"});
        Descriptors.Descriptor descriptor5 = descriptor3.getNestedTypes().get(1);
        f13612i = descriptor5;
        f13613j = new GeneratedMessageV3.e(descriptor5, new String[]{"Start", "End"});
        Descriptors.Descriptor descriptor6 = a0().getMessageTypes().get(3);
        f13614k = descriptor6;
        f13615l = new GeneratedMessageV3.e(descriptor6, new String[]{"UninterpretedOption"});
        Descriptors.Descriptor descriptor7 = a0().getMessageTypes().get(4);
        f13616m = descriptor7;
        f13617n = new GeneratedMessageV3.e(descriptor7, new String[]{"Name", "Number", TextFieldImplKt.LabelId, "Type", "TypeName", "Extendee", "DefaultValue", "OneofIndex", "JsonName", "Options", "Proto3Optional"});
        Descriptors.Descriptor descriptor8 = a0().getMessageTypes().get(5);
        f13618o = descriptor8;
        f13619p = new GeneratedMessageV3.e(descriptor8, new String[]{"Name", "Options"});
        Descriptors.Descriptor descriptor9 = a0().getMessageTypes().get(6);
        f13620q = descriptor9;
        f13621r = new GeneratedMessageV3.e(descriptor9, new String[]{"Name", "Value", "Options", "ReservedRange", "ReservedName"});
        Descriptors.Descriptor descriptor10 = descriptor9.getNestedTypes().get(0);
        f13622s = descriptor10;
        f13623t = new GeneratedMessageV3.e(descriptor10, new String[]{"Start", "End"});
        Descriptors.Descriptor descriptor11 = a0().getMessageTypes().get(7);
        f13624u = descriptor11;
        f13625v = new GeneratedMessageV3.e(descriptor11, new String[]{"Name", "Number", "Options"});
        Descriptors.Descriptor descriptor12 = a0().getMessageTypes().get(8);
        f13626w = descriptor12;
        f13627x = new GeneratedMessageV3.e(descriptor12, new String[]{"Name", "Method", "Options"});
        Descriptors.Descriptor descriptor13 = a0().getMessageTypes().get(9);
        f13628y = descriptor13;
        f13629z = new GeneratedMessageV3.e(descriptor13, new String[]{"Name", "InputType", "OutputType", "Options", "ClientStreaming", "ServerStreaming"});
        Descriptors.Descriptor descriptor14 = a0().getMessageTypes().get(10);
        A = descriptor14;
        B = new GeneratedMessageV3.e(descriptor14, new String[]{"JavaPackage", "JavaOuterClassname", "JavaMultipleFiles", "JavaGenerateEqualsAndHash", "JavaStringCheckUtf8", "OptimizeFor", "GoPackage", "CcGenericServices", "JavaGenericServices", "PyGenericServices", "PhpGenericServices", "Deprecated", "CcEnableArenas", "ObjcClassPrefix", "CsharpNamespace", "SwiftPrefix", "PhpClassPrefix", "PhpNamespace", "PhpMetadataNamespace", "RubyPackage", "UninterpretedOption"});
        Descriptors.Descriptor descriptor15 = a0().getMessageTypes().get(11);
        C = descriptor15;
        D = new GeneratedMessageV3.e(descriptor15, new String[]{"MessageSetWireFormat", "NoStandardDescriptorAccessor", "Deprecated", "MapEntry", "UninterpretedOption"});
        Descriptors.Descriptor descriptor16 = a0().getMessageTypes().get(12);
        E = descriptor16;
        F = new GeneratedMessageV3.e(descriptor16, new String[]{"Ctype", "Packed", "Jstype", "Lazy", "Deprecated", "Weak", "UninterpretedOption"});
        Descriptors.Descriptor descriptor17 = a0().getMessageTypes().get(13);
        G = descriptor17;
        H = new GeneratedMessageV3.e(descriptor17, new String[]{"UninterpretedOption"});
        Descriptors.Descriptor descriptor18 = a0().getMessageTypes().get(14);
        I = descriptor18;
        J = new GeneratedMessageV3.e(descriptor18, new String[]{"AllowAlias", "Deprecated", "UninterpretedOption"});
        Descriptors.Descriptor descriptor19 = a0().getMessageTypes().get(15);
        K = descriptor19;
        L = new GeneratedMessageV3.e(descriptor19, new String[]{"Deprecated", "UninterpretedOption"});
        Descriptors.Descriptor descriptor20 = a0().getMessageTypes().get(16);
        M = descriptor20;
        N = new GeneratedMessageV3.e(descriptor20, new String[]{"Deprecated", "UninterpretedOption"});
        Descriptors.Descriptor descriptor21 = a0().getMessageTypes().get(17);
        O = descriptor21;
        P = new GeneratedMessageV3.e(descriptor21, new String[]{"Deprecated", "IdempotencyLevel", "UninterpretedOption"});
        Descriptors.Descriptor descriptor22 = a0().getMessageTypes().get(18);
        Q = descriptor22;
        R = new GeneratedMessageV3.e(descriptor22, new String[]{"Name", "IdentifierValue", "PositiveIntValue", "NegativeIntValue", "DoubleValue", "StringValue", "AggregateValue"});
        Descriptors.Descriptor descriptor23 = descriptor22.getNestedTypes().get(0);
        S = descriptor23;
        T = new GeneratedMessageV3.e(descriptor23, new String[]{"NamePart", "IsExtension"});
        Descriptors.Descriptor descriptor24 = a0().getMessageTypes().get(19);
        U = descriptor24;
        V = new GeneratedMessageV3.e(descriptor24, new String[]{"Location"});
        Descriptors.Descriptor descriptor25 = descriptor24.getNestedTypes().get(0);
        W = descriptor25;
        X = new GeneratedMessageV3.e(descriptor25, new String[]{"Path", "Span", "LeadingComments", "TrailingComments", "LeadingDetachedComments"});
        Descriptors.Descriptor descriptor26 = a0().getMessageTypes().get(20);
        Y = descriptor26;
        Z = new GeneratedMessageV3.e(descriptor26, new String[]{"Annotation"});
        Descriptors.Descriptor descriptor27 = descriptor26.getNestedTypes().get(0);
        f13602a0 = descriptor27;
        f13604b0 = new GeneratedMessageV3.e(descriptor27, new String[]{"Path", "SourceFile", "Begin", "End"});
    }

    public static Descriptors.FileDescriptor a0() {
        return f13606c0;
    }
}
