package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class ExtensionRegistryLite {
    static final ExtensionRegistryLite EMPTY_REGISTRY_LITE = new ExtensionRegistryLite(true);
    static final String EXTENSION_CLASS_NAME = "com.google.protobuf.Extension";
    private static boolean doFullRuntimeInheritanceCheck = true;
    private static volatile boolean eagerlyParseMessageSets = false;
    private static volatile ExtensionRegistryLite emptyRegistry;
    private final Map<b, GeneratedMessageLite.GeneratedExtension<?, ?>> extensionsByNumber;

    /* loaded from: classes5.dex */
    private static class a {
        static final Class<?> INSTANCE = resolveExtensionClass();

        private a() {
        }

        static Class<?> resolveExtensionClass() {
            try {
                return Class.forName(ExtensionRegistryLite.EXTENSION_CLASS_NAME);
            } catch (ClassNotFoundException unused) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b {
        private final int number;
        private final Object object;

        b(Object obj, int i10) {
            this.object = obj;
            this.number = i10;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.object != bVar.object || this.number != bVar.number) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (System.identityHashCode(this.object) * 65535) + this.number;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExtensionRegistryLite() {
        this.extensionsByNumber = new HashMap();
    }

    public static ExtensionRegistryLite getEmptyRegistry() {
        if (!doFullRuntimeInheritanceCheck) {
            return EMPTY_REGISTRY_LITE;
        }
        ExtensionRegistryLite extensionRegistryLite = emptyRegistry;
        if (extensionRegistryLite == null) {
            synchronized (ExtensionRegistryLite.class) {
                try {
                    extensionRegistryLite = emptyRegistry;
                    if (extensionRegistryLite == null) {
                        extensionRegistryLite = i.createEmpty();
                        emptyRegistry = extensionRegistryLite;
                    }
                } finally {
                }
            }
        }
        return extensionRegistryLite;
    }

    public static boolean isEagerlyParseMessageSets() {
        return eagerlyParseMessageSets;
    }

    public static ExtensionRegistryLite newInstance() {
        if (doFullRuntimeInheritanceCheck) {
            return i.create();
        }
        return new ExtensionRegistryLite();
    }

    public static void setEagerlyParseMessageSets(boolean z10) {
        eagerlyParseMessageSets = z10;
    }

    public final void add(GeneratedMessageLite.GeneratedExtension<?, ?> generatedExtension) {
        this.extensionsByNumber.put(new b(generatedExtension.getContainingTypeDefaultInstance(), generatedExtension.getNumber()), generatedExtension);
    }

    public <ContainingType extends MessageLite> GeneratedMessageLite.GeneratedExtension<ContainingType, ?> findLiteExtensionByNumber(ContainingType containingtype, int i10) {
        return (GeneratedMessageLite.GeneratedExtension<ContainingType, ?>) this.extensionsByNumber.get(new b(containingtype, i10));
    }

    public ExtensionRegistryLite getUnmodifiable() {
        return new ExtensionRegistryLite(this);
    }

    ExtensionRegistryLite(ExtensionRegistryLite extensionRegistryLite) {
        if (extensionRegistryLite == EMPTY_REGISTRY_LITE) {
            this.extensionsByNumber = Collections.emptyMap();
        } else {
            this.extensionsByNumber = Collections.unmodifiableMap(extensionRegistryLite.extensionsByNumber);
        }
    }

    public final void add(ExtensionLite<?, ?> extensionLite) {
        if (GeneratedMessageLite.GeneratedExtension.class.isAssignableFrom(extensionLite.getClass())) {
            add((GeneratedMessageLite.GeneratedExtension) extensionLite);
        }
        if (doFullRuntimeInheritanceCheck && i.isFullRegistry(this)) {
            try {
                getClass().getMethod("add", a.INSTANCE).invoke(this, extensionLite);
            } catch (Exception e10) {
                throw new IllegalArgumentException(String.format("Could not invoke ExtensionRegistry#add for %s", extensionLite), e10);
            }
        }
    }

    ExtensionRegistryLite(boolean z10) {
        this.extensionsByNumber = Collections.emptyMap();
    }
}
