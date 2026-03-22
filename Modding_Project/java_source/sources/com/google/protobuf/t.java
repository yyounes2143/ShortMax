package com.google.protobuf;

import com.unity3d.services.core.fid.Constants;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ManifestSchemaFactory.java */
/* loaded from: classes5.dex */
public final class t implements m0 {
    private static final y EMPTY_FACTORY = new a();
    private final y messageInfoFactory;

    /* compiled from: ManifestSchemaFactory.java */
    /* loaded from: classes5.dex */
    class a implements y {
        a() {
        }

        @Override // com.google.protobuf.y
        public boolean isSupported(Class<?> cls) {
            return false;
        }

        @Override // com.google.protobuf.y
        public x messageInfoFor(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ManifestSchemaFactory.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {
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
    /* compiled from: ManifestSchemaFactory.java */
    /* loaded from: classes5.dex */
    public static class c implements y {
        private y[] factories;

        c(y... yVarArr) {
            this.factories = yVarArr;
        }

        @Override // com.google.protobuf.y
        public boolean isSupported(Class<?> cls) {
            for (y yVar : this.factories) {
                if (yVar.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.protobuf.y
        public x messageInfoFor(Class<?> cls) {
            y[] yVarArr;
            for (y yVar : this.factories) {
                if (yVar.isSupported(cls)) {
                    return yVar.messageInfoFor(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }
    }

    public t() {
        this(getDefaultMessageInfoFactory());
    }

    private static boolean allowExtensions(x xVar) {
        if (b.$SwitchMap$com$google$protobuf$ProtoSyntax[xVar.getSyntax().ordinal()] != 1) {
            return true;
        }
        return false;
    }

    private static y getDefaultMessageInfoFactory() {
        return new c(n.getInstance(), getDescriptorMessageInfoFactory());
    }

    private static y getDescriptorMessageInfoFactory() {
        try {
            return (y) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod(Constants.GET_INSTANCE, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return EMPTY_FACTORY;
        }
    }

    private static <T> l0<T> newSchema(Class<T> cls, x xVar) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            if (allowExtensions(xVar)) {
                return a0.newSchema(cls, xVar, e0.lite(), r.lite(), n0.unknownFieldSetLiteSchema(), l.lite(), w.lite());
            }
            return a0.newSchema(cls, xVar, e0.lite(), r.lite(), n0.unknownFieldSetLiteSchema(), null, w.lite());
        } else if (allowExtensions(xVar)) {
            return a0.newSchema(cls, xVar, e0.full(), r.full(), n0.unknownFieldSetFullSchema(), l.full(), w.full());
        } else {
            return a0.newSchema(cls, xVar, e0.full(), r.full(), n0.unknownFieldSetFullSchema(), null, w.full());
        }
    }

    @Override // com.google.protobuf.m0
    public <T> l0<T> createSchema(Class<T> cls) {
        n0.requireGeneratedMessage(cls);
        x messageInfoFor = this.messageInfoFactory.messageInfoFor(cls);
        if (messageInfoFor.isMessageSetWireFormat()) {
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                return b0.newSchema(n0.unknownFieldSetLiteSchema(), l.lite(), messageInfoFor.getDefaultInstance());
            }
            return b0.newSchema(n0.unknownFieldSetFullSchema(), l.full(), messageInfoFor.getDefaultInstance());
        }
        return newSchema(cls, messageInfoFor);
    }

    private t(y yVar) {
        this.messageInfoFactory = (y) Internal.checkNotNull(yVar, "messageInfoFactory");
    }
}
