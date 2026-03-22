package androidx.datastore.preferences.protobuf;

import com.unity3d.services.core.fid.Constants;
/* JADX INFO: Access modifiers changed from: package-private */
@CheckReturnValue
/* loaded from: classes2.dex */
public final class ManifestSchemaFactory implements SchemaFactory {
    private static final MessageInfoFactory EMPTY_FACTORY = new MessageInfoFactory() { // from class: androidx.datastore.preferences.protobuf.ManifestSchemaFactory.1
        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public boolean isSupported(Class<?> cls) {
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public MessageInfo messageInfoFor(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }
    };
    private final MessageInfoFactory messageInfoFactory;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.datastore.preferences.protobuf.ManifestSchemaFactory$2  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$ProtoSyntax;

        static {
            int[] iArr = new int[ProtoSyntax.values().length];
            $SwitchMap$com$google$protobuf$ProtoSyntax = iArr;
            try {
                iArr[ProtoSyntax.PROTO3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class CompositeMessageInfoFactory implements MessageInfoFactory {
        private MessageInfoFactory[] factories;

        CompositeMessageInfoFactory(MessageInfoFactory... messageInfoFactoryArr) {
            this.factories = messageInfoFactoryArr;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public boolean isSupported(Class<?> cls) {
            for (MessageInfoFactory messageInfoFactory : this.factories) {
                if (messageInfoFactory.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public MessageInfo messageInfoFor(Class<?> cls) {
            MessageInfoFactory[] messageInfoFactoryArr;
            for (MessageInfoFactory messageInfoFactory : this.factories) {
                if (messageInfoFactory.isSupported(cls)) {
                    return messageInfoFactory.messageInfoFor(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }
    }

    public ManifestSchemaFactory() {
        this(getDefaultMessageInfoFactory());
    }

    private static boolean allowExtensions(MessageInfo messageInfo) {
        if (AnonymousClass2.$SwitchMap$com$google$protobuf$ProtoSyntax[messageInfo.getSyntax().ordinal()] != 1) {
            return true;
        }
        return false;
    }

    private static MessageInfoFactory getDefaultMessageInfoFactory() {
        return new CompositeMessageInfoFactory(GeneratedMessageInfoFactory.getInstance(), getDescriptorMessageInfoFactory());
    }

    private static MessageInfoFactory getDescriptorMessageInfoFactory() {
        if (Protobuf.assumeLiteRuntime) {
            return EMPTY_FACTORY;
        }
        try {
            return (MessageInfoFactory) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod(Constants.GET_INSTANCE, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return EMPTY_FACTORY;
        }
    }

    private static <T> Schema<T> newSchema(Class<T> cls, MessageInfo messageInfo) {
        ExtensionSchema<?> extensionSchema = null;
        if (useLiteRuntime(cls)) {
            NewInstanceSchema lite = NewInstanceSchemas.lite();
            ListFieldSchema lite2 = ListFieldSchemas.lite();
            UnknownFieldSchema<?, ?> unknownFieldSetLiteSchema = SchemaUtil.unknownFieldSetLiteSchema();
            if (allowExtensions(messageInfo)) {
                extensionSchema = ExtensionSchemas.lite();
            }
            return MessageSchema.newSchema(cls, messageInfo, lite, lite2, unknownFieldSetLiteSchema, extensionSchema, MapFieldSchemas.lite());
        }
        NewInstanceSchema full = NewInstanceSchemas.full();
        ListFieldSchema full2 = ListFieldSchemas.full();
        UnknownFieldSchema<?, ?> unknownFieldSetFullSchema = SchemaUtil.unknownFieldSetFullSchema();
        if (allowExtensions(messageInfo)) {
            extensionSchema = ExtensionSchemas.full();
        }
        return MessageSchema.newSchema(cls, messageInfo, full, full2, unknownFieldSetFullSchema, extensionSchema, MapFieldSchemas.full());
    }

    private static boolean useLiteRuntime(Class<?> cls) {
        if (!Protobuf.assumeLiteRuntime && !GeneratedMessageLite.class.isAssignableFrom(cls)) {
            return false;
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.SchemaFactory
    public <T> Schema<T> createSchema(Class<T> cls) {
        SchemaUtil.requireGeneratedMessage(cls);
        MessageInfo messageInfoFor = this.messageInfoFactory.messageInfoFor(cls);
        if (messageInfoFor.isMessageSetWireFormat()) {
            if (useLiteRuntime(cls)) {
                return MessageSetSchema.newSchema(SchemaUtil.unknownFieldSetLiteSchema(), ExtensionSchemas.lite(), messageInfoFor.getDefaultInstance());
            }
            return MessageSetSchema.newSchema(SchemaUtil.unknownFieldSetFullSchema(), ExtensionSchemas.full(), messageInfoFor.getDefaultInstance());
        }
        return newSchema(cls, messageInfoFor);
    }

    private ManifestSchemaFactory(MessageInfoFactory messageInfoFactory) {
        this.messageInfoFactory = (MessageInfoFactory) Internal.checkNotNull(messageInfoFactory, "messageInfoFactory");
    }
}
