package com.explorestack.protobuf;

import com.explorestack.protobuf.DescriptorProtos;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.TextFormat;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.e0;
import com.explorestack.protobuf.i0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.logging.Logger;
/* loaded from: classes3.dex */
public final class Descriptors {
    private static final Logger logger = Logger.getLogger(Descriptors.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.protobuf.Descriptors$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType;
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type;

        static {
            int[] iArr = new int[FieldDescriptor.JavaType.values().length];
            $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType = iArr;
            try {
                iArr[FieldDescriptor.JavaType.ENUM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType[FieldDescriptor.JavaType.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[FieldDescriptor.Type.values().length];
            $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type = iArr2;
            try {
                iArr2[FieldDescriptor.Type.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.UINT32.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.INT64.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.SINT64.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.UINT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.FIXED64.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.FLOAT.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.DOUBLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.BOOL.ordinal()] = 13;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError unused20) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class Descriptor extends GenericDescriptor {
        private final Descriptor containingType;
        private final EnumDescriptor[] enumTypes;
        private final FieldDescriptor[] extensions;
        private final FieldDescriptor[] fields;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private final Descriptor[] nestedTypes;
        private final OneofDescriptor[] oneofs;
        private DescriptorProtos.DescriptorProto proto;
        private final int realOneofCount;

        /* synthetic */ Descriptor(DescriptorProtos.DescriptorProto descriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i10, AnonymousClass1 anonymousClass1) throws DescriptorValidationException {
            this(descriptorProto, fileDescriptor, descriptor, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void crossLink() throws DescriptorValidationException {
            for (Descriptor descriptor : this.nestedTypes) {
                descriptor.crossLink();
            }
            for (FieldDescriptor fieldDescriptor : this.fields) {
                fieldDescriptor.crossLink();
            }
            for (FieldDescriptor fieldDescriptor2 : this.extensions) {
                fieldDescriptor2.crossLink();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.DescriptorProto descriptorProto) {
            this.proto = descriptorProto;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                Descriptor[] descriptorArr = this.nestedTypes;
                if (i11 >= descriptorArr.length) {
                    break;
                }
                descriptorArr[i11].setProto(descriptorProto.Q(i11));
                i11++;
            }
            int i12 = 0;
            while (true) {
                OneofDescriptor[] oneofDescriptorArr = this.oneofs;
                if (i12 >= oneofDescriptorArr.length) {
                    break;
                }
                oneofDescriptorArr[i12].setProto(descriptorProto.V(i12));
                i12++;
            }
            int i13 = 0;
            while (true) {
                EnumDescriptor[] enumDescriptorArr = this.enumTypes;
                if (i13 >= enumDescriptorArr.length) {
                    break;
                }
                enumDescriptorArr[i13].setProto(descriptorProto.E(i13));
                i13++;
            }
            int i14 = 0;
            while (true) {
                FieldDescriptor[] fieldDescriptorArr = this.fields;
                if (i14 >= fieldDescriptorArr.length) {
                    break;
                }
                fieldDescriptorArr[i14].setProto(descriptorProto.N(i14));
                i14++;
            }
            while (true) {
                FieldDescriptor[] fieldDescriptorArr2 = this.extensions;
                if (i10 < fieldDescriptorArr2.length) {
                    fieldDescriptorArr2[i10].setProto(descriptorProto.H(i10));
                    i10++;
                } else {
                    return;
                }
            }
        }

        public EnumDescriptor findEnumTypeByName(String str) {
            DescriptorPool descriptorPool = this.file.pool;
            GenericDescriptor findSymbol = descriptorPool.findSymbol(this.fullName + '.' + str);
            if (findSymbol instanceof EnumDescriptor) {
                return (EnumDescriptor) findSymbol;
            }
            return null;
        }

        public FieldDescriptor findFieldByName(String str) {
            DescriptorPool descriptorPool = this.file.pool;
            GenericDescriptor findSymbol = descriptorPool.findSymbol(this.fullName + '.' + str);
            if (findSymbol instanceof FieldDescriptor) {
                return (FieldDescriptor) findSymbol;
            }
            return null;
        }

        public FieldDescriptor findFieldByNumber(int i10) {
            return (FieldDescriptor) this.file.pool.fieldsByNumber.get(new DescriptorPool.DescriptorIntPair(this, i10));
        }

        public Descriptor findNestedTypeByName(String str) {
            DescriptorPool descriptorPool = this.file.pool;
            GenericDescriptor findSymbol = descriptorPool.findSymbol(this.fullName + '.' + str);
            if (findSymbol instanceof Descriptor) {
                return (Descriptor) findSymbol;
            }
            return null;
        }

        public Descriptor getContainingType() {
            return this.containingType;
        }

        public List<EnumDescriptor> getEnumTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.enumTypes));
        }

        public List<FieldDescriptor> getExtensions() {
            return Collections.unmodifiableList(Arrays.asList(this.extensions));
        }

        public List<FieldDescriptor> getFields() {
            return Collections.unmodifiableList(Arrays.asList(this.fields));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.fullName;
        }

        public int getIndex() {
            return this.index;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.proto.getName();
        }

        public List<Descriptor> getNestedTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.nestedTypes));
        }

        public List<OneofDescriptor> getOneofs() {
            return Collections.unmodifiableList(Arrays.asList(this.oneofs));
        }

        public DescriptorProtos.MessageOptions getOptions() {
            return this.proto.Y();
        }

        public List<OneofDescriptor> getRealOneofs() {
            return Collections.unmodifiableList(Arrays.asList(this.oneofs).subList(0, this.realOneofCount));
        }

        public boolean isExtendable() {
            return !this.proto.M().isEmpty();
        }

        public boolean isExtensionNumber(int i10) {
            for (DescriptorProtos.DescriptorProto.ExtensionRange extensionRange : this.proto.M()) {
                if (extensionRange.k() <= i10 && i10 < extensionRange.i()) {
                    return true;
                }
            }
            return false;
        }

        public boolean isReservedName(String str) {
            i0.a(str);
            for (String str2 : this.proto.a0()) {
                if (str2.equals(str)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isReservedNumber(int i10) {
            for (DescriptorProtos.DescriptorProto.ReservedRange reservedRange : this.proto.l0()) {
                if (reservedRange.i() <= i10 && i10 < reservedRange.h()) {
                    return true;
                }
            }
            return false;
        }

        Descriptor(String str) throws DescriptorValidationException {
            super(null);
            String str2;
            String str3;
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf != -1) {
                str3 = str.substring(lastIndexOf + 1);
                str2 = str.substring(0, lastIndexOf);
            } else {
                str2 = "";
                str3 = str;
            }
            this.index = 0;
            this.proto = DescriptorProtos.DescriptorProto.p0().U(str3).a(DescriptorProtos.DescriptorProto.ExtensionRange.s().v(1).s(536870912).build()).build();
            this.fullName = str;
            this.containingType = null;
            this.nestedTypes = new Descriptor[0];
            this.enumTypes = new EnumDescriptor[0];
            this.fields = new FieldDescriptor[0];
            this.extensions = new FieldDescriptor[0];
            this.oneofs = new OneofDescriptor[0];
            this.realOneofCount = 0;
            this.file = new FileDescriptor(str2, this);
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.DescriptorProto toProto() {
            return this.proto;
        }

        private Descriptor(DescriptorProtos.DescriptorProto descriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i10) throws DescriptorValidationException {
            super(null);
            this.index = i10;
            this.proto = descriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, descriptor, descriptorProto.getName());
            this.file = fileDescriptor;
            this.containingType = descriptor;
            this.oneofs = new OneofDescriptor[descriptorProto.W()];
            for (int i11 = 0; i11 < descriptorProto.W(); i11++) {
                this.oneofs[i11] = new OneofDescriptor(descriptorProto.V(i11), fileDescriptor, this, i11, null);
            }
            this.nestedTypes = new Descriptor[descriptorProto.S()];
            for (int i12 = 0; i12 < descriptorProto.S(); i12++) {
                this.nestedTypes[i12] = new Descriptor(descriptorProto.Q(i12), fileDescriptor, this, i12);
            }
            this.enumTypes = new EnumDescriptor[descriptorProto.F()];
            for (int i13 = 0; i13 < descriptorProto.F(); i13++) {
                this.enumTypes[i13] = new EnumDescriptor(descriptorProto.E(i13), fileDescriptor, this, i13, null);
            }
            this.fields = new FieldDescriptor[descriptorProto.O()];
            for (int i14 = 0; i14 < descriptorProto.O(); i14++) {
                this.fields[i14] = new FieldDescriptor(descriptorProto.N(i14), fileDescriptor, this, i14, false, null);
            }
            this.extensions = new FieldDescriptor[descriptorProto.I()];
            for (int i15 = 0; i15 < descriptorProto.I(); i15++) {
                this.extensions[i15] = new FieldDescriptor(descriptorProto.H(i15), fileDescriptor, this, i15, true, null);
            }
            for (int i16 = 0; i16 < descriptorProto.W(); i16++) {
                OneofDescriptor oneofDescriptor = this.oneofs[i16];
                oneofDescriptor.fields = new FieldDescriptor[oneofDescriptor.getFieldCount()];
                this.oneofs[i16].fieldCount = 0;
            }
            for (int i17 = 0; i17 < descriptorProto.O(); i17++) {
                OneofDescriptor containingOneof = this.fields[i17].getContainingOneof();
                if (containingOneof != null) {
                    containingOneof.fields[OneofDescriptor.access$2008(containingOneof)] = this.fields[i17];
                }
            }
            int i18 = 0;
            for (OneofDescriptor oneofDescriptor2 : this.oneofs) {
                if (oneofDescriptor2.isSynthetic()) {
                    i18++;
                } else if (i18 > 0) {
                    throw new DescriptorValidationException(this, "Synthetic oneofs must come last.", (AnonymousClass1) null);
                }
            }
            this.realOneofCount = this.oneofs.length - i18;
            fileDescriptor.pool.addSymbol(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class DescriptorPool {
        private boolean allowUnknownDependencies;
        private final Map<String, GenericDescriptor> descriptorsByName = new HashMap();
        private final Map<DescriptorIntPair, FieldDescriptor> fieldsByNumber = new HashMap();
        private final Map<DescriptorIntPair, EnumValueDescriptor> enumValuesByNumber = new HashMap();
        private final Set<FileDescriptor> dependencies = new HashSet();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class DescriptorIntPair {
            private final GenericDescriptor descriptor;
            private final int number;

            DescriptorIntPair(GenericDescriptor genericDescriptor, int i10) {
                this.descriptor = genericDescriptor;
                this.number = i10;
            }

            public boolean equals(Object obj) {
                if (!(obj instanceof DescriptorIntPair)) {
                    return false;
                }
                DescriptorIntPair descriptorIntPair = (DescriptorIntPair) obj;
                if (this.descriptor != descriptorIntPair.descriptor || this.number != descriptorIntPair.number) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return (this.descriptor.hashCode() * 65535) + this.number;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class PackageDescriptor extends GenericDescriptor {
            private final FileDescriptor file;
            private final String fullName;
            private final String name;

            PackageDescriptor(String str, String str2, FileDescriptor fileDescriptor) {
                super(null);
                this.file = fileDescriptor;
                this.fullName = str2;
                this.name = str;
            }

            @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
            public FileDescriptor getFile() {
                return this.file;
            }

            @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
            public String getFullName() {
                return this.fullName;
            }

            @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
            public String getName() {
                return this.name;
            }

            @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
            public Message toProto() {
                return this.file.toProto();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public enum SearchFilter {
            TYPES_ONLY,
            AGGREGATES_ONLY,
            ALL_SYMBOLS
        }

        DescriptorPool(FileDescriptor[] fileDescriptorArr, boolean z10) {
            this.allowUnknownDependencies = z10;
            for (FileDescriptor fileDescriptor : fileDescriptorArr) {
                this.dependencies.add(fileDescriptor);
                importPublicDependencies(fileDescriptor);
            }
            for (FileDescriptor fileDescriptor2 : this.dependencies) {
                try {
                    addPackage(fileDescriptor2.getPackage(), fileDescriptor2);
                } catch (DescriptorValidationException e10) {
                    throw new AssertionError(e10);
                }
            }
        }

        private void importPublicDependencies(FileDescriptor fileDescriptor) {
            for (FileDescriptor fileDescriptor2 : fileDescriptor.getPublicDependencies()) {
                if (this.dependencies.add(fileDescriptor2)) {
                    importPublicDependencies(fileDescriptor2);
                }
            }
        }

        static void validateSymbolName(GenericDescriptor genericDescriptor) throws DescriptorValidationException {
            String name = genericDescriptor.getName();
            if (name.length() != 0) {
                for (int i10 = 0; i10 < name.length(); i10++) {
                    char charAt = name.charAt(i10);
                    if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && charAt != '_' && ('0' > charAt || charAt > '9' || i10 <= 0))) {
                        throw new DescriptorValidationException(genericDescriptor, '\"' + name + "\" is not a valid identifier.", (AnonymousClass1) null);
                    }
                }
                return;
            }
            throw new DescriptorValidationException(genericDescriptor, "Missing name.", (AnonymousClass1) null);
        }

        void addEnumValueByNumber(EnumValueDescriptor enumValueDescriptor) {
            DescriptorIntPair descriptorIntPair = new DescriptorIntPair(enumValueDescriptor.getType(), enumValueDescriptor.getNumber());
            EnumValueDescriptor put = this.enumValuesByNumber.put(descriptorIntPair, enumValueDescriptor);
            if (put != null) {
                this.enumValuesByNumber.put(descriptorIntPair, put);
            }
        }

        void addFieldByNumber(FieldDescriptor fieldDescriptor) throws DescriptorValidationException {
            DescriptorIntPair descriptorIntPair = new DescriptorIntPair(fieldDescriptor.getContainingType(), fieldDescriptor.getNumber());
            FieldDescriptor put = this.fieldsByNumber.put(descriptorIntPair, fieldDescriptor);
            if (put == null) {
                return;
            }
            this.fieldsByNumber.put(descriptorIntPair, put);
            throw new DescriptorValidationException(fieldDescriptor, "Field number " + fieldDescriptor.getNumber() + " has already been used in \"" + fieldDescriptor.getContainingType().getFullName() + "\" by field \"" + put.getName() + "\".", (AnonymousClass1) null);
        }

        void addPackage(String str, FileDescriptor fileDescriptor) throws DescriptorValidationException {
            String substring;
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf == -1) {
                substring = str;
            } else {
                addPackage(str.substring(0, lastIndexOf), fileDescriptor);
                substring = str.substring(lastIndexOf + 1);
            }
            GenericDescriptor put = this.descriptorsByName.put(str, new PackageDescriptor(substring, str, fileDescriptor));
            if (put != null) {
                this.descriptorsByName.put(str, put);
                if (!(put instanceof PackageDescriptor)) {
                    throw new DescriptorValidationException(fileDescriptor, '\"' + substring + "\" is already defined (as something other than a package) in file \"" + put.getFile().getName() + "\".", (AnonymousClass1) null);
                }
            }
        }

        void addSymbol(GenericDescriptor genericDescriptor) throws DescriptorValidationException {
            validateSymbolName(genericDescriptor);
            String fullName = genericDescriptor.getFullName();
            GenericDescriptor put = this.descriptorsByName.put(fullName, genericDescriptor);
            if (put != null) {
                this.descriptorsByName.put(fullName, put);
                if (genericDescriptor.getFile() == put.getFile()) {
                    int lastIndexOf = fullName.lastIndexOf(46);
                    if (lastIndexOf == -1) {
                        throw new DescriptorValidationException(genericDescriptor, '\"' + fullName + "\" is already defined.", (AnonymousClass1) null);
                    }
                    throw new DescriptorValidationException(genericDescriptor, '\"' + fullName.substring(lastIndexOf + 1) + "\" is already defined in \"" + fullName.substring(0, lastIndexOf) + "\".", (AnonymousClass1) null);
                }
                throw new DescriptorValidationException(genericDescriptor, '\"' + fullName + "\" is already defined in file \"" + put.getFile().getName() + "\".", (AnonymousClass1) null);
            }
        }

        GenericDescriptor findSymbol(String str) {
            return findSymbol(str, SearchFilter.ALL_SYMBOLS);
        }

        boolean isAggregate(GenericDescriptor genericDescriptor) {
            if (!(genericDescriptor instanceof Descriptor) && !(genericDescriptor instanceof EnumDescriptor) && !(genericDescriptor instanceof PackageDescriptor) && !(genericDescriptor instanceof ServiceDescriptor)) {
                return false;
            }
            return true;
        }

        boolean isType(GenericDescriptor genericDescriptor) {
            if (!(genericDescriptor instanceof Descriptor) && !(genericDescriptor instanceof EnumDescriptor)) {
                return false;
            }
            return true;
        }

        GenericDescriptor lookupSymbol(String str, GenericDescriptor genericDescriptor, SearchFilter searchFilter) throws DescriptorValidationException {
            String substring;
            GenericDescriptor findSymbol;
            String str2;
            if (str.startsWith(".")) {
                str2 = str.substring(1);
                findSymbol = findSymbol(str2, searchFilter);
            } else {
                int indexOf = str.indexOf(46);
                if (indexOf == -1) {
                    substring = str;
                } else {
                    substring = str.substring(0, indexOf);
                }
                StringBuilder sb2 = new StringBuilder(genericDescriptor.getFullName());
                while (true) {
                    int lastIndexOf = sb2.lastIndexOf(".");
                    if (lastIndexOf == -1) {
                        findSymbol = findSymbol(str, searchFilter);
                        str2 = str;
                        break;
                    }
                    int i10 = lastIndexOf + 1;
                    sb2.setLength(i10);
                    sb2.append(substring);
                    GenericDescriptor findSymbol2 = findSymbol(sb2.toString(), SearchFilter.AGGREGATES_ONLY);
                    if (findSymbol2 != null) {
                        if (indexOf != -1) {
                            sb2.setLength(i10);
                            sb2.append(str);
                            findSymbol = findSymbol(sb2.toString(), searchFilter);
                        } else {
                            findSymbol = findSymbol2;
                        }
                        str2 = sb2.toString();
                    } else {
                        sb2.setLength(lastIndexOf);
                    }
                }
            }
            if (findSymbol == null) {
                if (this.allowUnknownDependencies && searchFilter == SearchFilter.TYPES_ONLY) {
                    Logger logger = Descriptors.logger;
                    logger.warning("The descriptor for message type \"" + str + "\" can not be found and a placeholder is created for it");
                    Descriptor descriptor = new Descriptor(str2);
                    this.dependencies.add(descriptor.getFile());
                    return descriptor;
                }
                throw new DescriptorValidationException(genericDescriptor, '\"' + str + "\" is not defined.", (AnonymousClass1) null);
            }
            return findSymbol;
        }

        GenericDescriptor findSymbol(String str, SearchFilter searchFilter) {
            GenericDescriptor genericDescriptor = this.descriptorsByName.get(str);
            if (genericDescriptor == null || !(searchFilter == SearchFilter.ALL_SYMBOLS || ((searchFilter == SearchFilter.TYPES_ONLY && isType(genericDescriptor)) || (searchFilter == SearchFilter.AGGREGATES_ONLY && isAggregate(genericDescriptor))))) {
                for (FileDescriptor fileDescriptor : this.dependencies) {
                    GenericDescriptor genericDescriptor2 = fileDescriptor.pool.descriptorsByName.get(str);
                    if (genericDescriptor2 != null && (searchFilter == SearchFilter.ALL_SYMBOLS || ((searchFilter == SearchFilter.TYPES_ONLY && isType(genericDescriptor2)) || (searchFilter == SearchFilter.AGGREGATES_ONLY && isAggregate(genericDescriptor2))))) {
                        return genericDescriptor2;
                    }
                }
                return null;
            }
            return genericDescriptor;
        }
    }

    /* loaded from: classes3.dex */
    public static class DescriptorValidationException extends Exception {
        private static final long serialVersionUID = 5750205775490483148L;
        private final String description;
        private final String name;
        private final Message proto;

        /* synthetic */ DescriptorValidationException(FileDescriptor fileDescriptor, String str, AnonymousClass1 anonymousClass1) {
            this(fileDescriptor, str);
        }

        public String getDescription() {
            return this.description;
        }

        public Message getProblemProto() {
            return this.proto;
        }

        public String getProblemSymbolName() {
            return this.name;
        }

        /* synthetic */ DescriptorValidationException(GenericDescriptor genericDescriptor, String str, AnonymousClass1 anonymousClass1) {
            this(genericDescriptor, str);
        }

        /* synthetic */ DescriptorValidationException(GenericDescriptor genericDescriptor, String str, Throwable th2, AnonymousClass1 anonymousClass1) {
            this(genericDescriptor, str, th2);
        }

        private DescriptorValidationException(GenericDescriptor genericDescriptor, String str) {
            super(genericDescriptor.getFullName() + ": " + str);
            this.name = genericDescriptor.getFullName();
            this.proto = genericDescriptor.toProto();
            this.description = str;
        }

        private DescriptorValidationException(GenericDescriptor genericDescriptor, String str, Throwable th2) {
            this(genericDescriptor, str);
            initCause(th2);
        }

        private DescriptorValidationException(FileDescriptor fileDescriptor, String str) {
            super(fileDescriptor.getName() + ": " + str);
            this.name = fileDescriptor.getName();
            this.proto = fileDescriptor.toProto();
            this.description = str;
        }
    }

    /* loaded from: classes3.dex */
    public static final class EnumDescriptor extends GenericDescriptor implements i0.d<EnumValueDescriptor> {
        private final Descriptor containingType;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private DescriptorProtos.EnumDescriptorProto proto;
        private final WeakHashMap<Integer, WeakReference<EnumValueDescriptor>> unknownValues;
        private EnumValueDescriptor[] values;

        /* synthetic */ EnumDescriptor(DescriptorProtos.EnumDescriptorProto enumDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i10, AnonymousClass1 anonymousClass1) throws DescriptorValidationException {
            this(enumDescriptorProto, fileDescriptor, descriptor, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.EnumDescriptorProto enumDescriptorProto) {
            this.proto = enumDescriptorProto;
            int i10 = 0;
            while (true) {
                EnumValueDescriptor[] enumValueDescriptorArr = this.values;
                if (i10 < enumValueDescriptorArr.length) {
                    enumValueDescriptorArr[i10].setProto(enumDescriptorProto.z(i10));
                    i10++;
                } else {
                    return;
                }
            }
        }

        public EnumValueDescriptor findValueByName(String str) {
            DescriptorPool descriptorPool = this.file.pool;
            GenericDescriptor findSymbol = descriptorPool.findSymbol(this.fullName + '.' + str);
            if (findSymbol instanceof EnumValueDescriptor) {
                return (EnumValueDescriptor) findSymbol;
            }
            return null;
        }

        public EnumValueDescriptor findValueByNumberCreatingIfUnknown(int i10) {
            EnumValueDescriptor findValueByNumber = findValueByNumber(i10);
            if (findValueByNumber != null) {
                return findValueByNumber;
            }
            synchronized (this) {
                try {
                    Integer num = new Integer(i10);
                    WeakReference<EnumValueDescriptor> weakReference = this.unknownValues.get(num);
                    if (weakReference != null) {
                        findValueByNumber = weakReference.get();
                    }
                    if (findValueByNumber == null) {
                        findValueByNumber = new EnumValueDescriptor(this.file, this, num, (AnonymousClass1) null);
                        this.unknownValues.put(num, new WeakReference<>(findValueByNumber));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return findValueByNumber;
        }

        public Descriptor getContainingType() {
            return this.containingType;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.fullName;
        }

        public int getIndex() {
            return this.index;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.proto.getName();
        }

        public DescriptorProtos.EnumOptions getOptions() {
            return this.proto.s();
        }

        int getUnknownEnumValueDescriptorCount() {
            return this.unknownValues.size();
        }

        public List<EnumValueDescriptor> getValues() {
            return Collections.unmodifiableList(Arrays.asList(this.values));
        }

        private EnumDescriptor(DescriptorProtos.EnumDescriptorProto enumDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i10) throws DescriptorValidationException {
            super(null);
            this.unknownValues = new WeakHashMap<>();
            this.index = i10;
            this.proto = enumDescriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, descriptor, enumDescriptorProto.getName());
            this.file = fileDescriptor;
            this.containingType = descriptor;
            if (enumDescriptorProto.A() != 0) {
                this.values = new EnumValueDescriptor[enumDescriptorProto.A()];
                for (int i11 = 0; i11 < enumDescriptorProto.A(); i11++) {
                    this.values[i11] = new EnumValueDescriptor(enumDescriptorProto.z(i11), fileDescriptor, this, i11, null);
                }
                fileDescriptor.pool.addSymbol(this);
                return;
            }
            throw new DescriptorValidationException(this, "Enums must contain at least one value.", (AnonymousClass1) null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.explorestack.protobuf.i0.d
        public EnumValueDescriptor findValueByNumber(int i10) {
            return (EnumValueDescriptor) this.file.pool.enumValuesByNumber.get(new DescriptorPool.DescriptorIntPair(this, i10));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.EnumDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes3.dex */
    public static final class EnumValueDescriptor extends GenericDescriptor implements i0.c {
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private DescriptorProtos.EnumValueDescriptorProto proto;
        private final EnumDescriptor type;

        /* synthetic */ EnumValueDescriptor(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto, FileDescriptor fileDescriptor, EnumDescriptor enumDescriptor, int i10, AnonymousClass1 anonymousClass1) throws DescriptorValidationException {
            this(enumValueDescriptorProto, fileDescriptor, enumDescriptor, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto) {
            this.proto = enumValueDescriptorProto;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.fullName;
        }

        public int getIndex() {
            return this.index;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.proto.getName();
        }

        @Override // com.explorestack.protobuf.i0.c
        public int getNumber() {
            return this.proto.j();
        }

        public DescriptorProtos.EnumValueOptions getOptions() {
            return this.proto.k();
        }

        public EnumDescriptor getType() {
            return this.type;
        }

        public String toString() {
            return this.proto.getName();
        }

        /* synthetic */ EnumValueDescriptor(FileDescriptor fileDescriptor, EnumDescriptor enumDescriptor, Integer num, AnonymousClass1 anonymousClass1) {
            this(fileDescriptor, enumDescriptor, num);
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.EnumValueDescriptorProto toProto() {
            return this.proto;
        }

        private EnumValueDescriptor(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto, FileDescriptor fileDescriptor, EnumDescriptor enumDescriptor, int i10) throws DescriptorValidationException {
            super(null);
            this.index = i10;
            this.proto = enumValueDescriptorProto;
            this.file = fileDescriptor;
            this.type = enumDescriptor;
            this.fullName = enumDescriptor.getFullName() + '.' + enumValueDescriptorProto.getName();
            fileDescriptor.pool.addSymbol(this);
            fileDescriptor.pool.addEnumValueByNumber(this);
        }

        private EnumValueDescriptor(FileDescriptor fileDescriptor, EnumDescriptor enumDescriptor, Integer num) {
            super(null);
            DescriptorProtos.EnumValueDescriptorProto build = DescriptorProtos.EnumValueDescriptorProto.r().t("UNKNOWN_ENUM_VALUE_" + enumDescriptor.getName() + "_" + num).u(num.intValue()).build();
            this.index = -1;
            this.proto = build;
            this.file = fileDescriptor;
            this.type = enumDescriptor;
            this.fullName = enumDescriptor.getFullName() + '.' + build.getName();
        }
    }

    /* loaded from: classes3.dex */
    public static final class FieldDescriptor extends GenericDescriptor implements Comparable<FieldDescriptor>, e0.c<FieldDescriptor> {
        private static final WireFormat.FieldType[] table = WireFormat.FieldType.values();
        private OneofDescriptor containingOneof;
        private Descriptor containingType;
        private Object defaultValue;
        private EnumDescriptor enumType;
        private final Descriptor extensionScope;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private final boolean isProto3Optional;
        private final String jsonName;
        private Descriptor messageType;
        private DescriptorProtos.FieldDescriptorProto proto;
        private Type type;

        /* loaded from: classes3.dex */
        public enum JavaType {
            INT(0),
            LONG(0L),
            FLOAT(Float.valueOf(0.0f)),
            DOUBLE(Double.valueOf(0.0d)),
            BOOLEAN(Boolean.FALSE),
            STRING(""),
            BYTE_STRING(ByteString.EMPTY),
            ENUM(null),
            MESSAGE(null);
            
            private final Object defaultDefault;

            JavaType(Object obj) {
                this.defaultDefault = obj;
            }
        }

        /* JADX WARN: Enum visitor error
        jadx.core.utils.exceptions.JadxRuntimeException: Init of enum INT64 uses external variables
        	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
        	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
        	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
        	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
        	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
         */
        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* loaded from: classes3.dex */
        public static final class Type {
            private static final /* synthetic */ Type[] $VALUES;
            public static final Type BOOL;
            public static final Type BYTES;
            public static final Type DOUBLE;
            public static final Type ENUM;
            public static final Type FIXED32;
            public static final Type FIXED64;
            public static final Type FLOAT;
            public static final Type GROUP;
            public static final Type INT32;
            public static final Type INT64;
            public static final Type MESSAGE;
            public static final Type SFIXED32;
            public static final Type SFIXED64;
            public static final Type SINT32;
            public static final Type SINT64;
            public static final Type STRING;
            public static final Type UINT32;
            public static final Type UINT64;
            private JavaType javaType;

            static {
                Type type = new Type("DOUBLE", 0, JavaType.DOUBLE);
                DOUBLE = type;
                Type type2 = new Type("FLOAT", 1, JavaType.FLOAT);
                FLOAT = type2;
                JavaType javaType = JavaType.LONG;
                Type type3 = new Type("INT64", 2, javaType);
                INT64 = type3;
                Type type4 = new Type("UINT64", 3, javaType);
                UINT64 = type4;
                JavaType javaType2 = JavaType.INT;
                Type type5 = new Type("INT32", 4, javaType2);
                INT32 = type5;
                Type type6 = new Type("FIXED64", 5, javaType);
                FIXED64 = type6;
                Type type7 = new Type("FIXED32", 6, javaType2);
                FIXED32 = type7;
                Type type8 = new Type("BOOL", 7, JavaType.BOOLEAN);
                BOOL = type8;
                Type type9 = new Type("STRING", 8, JavaType.STRING);
                STRING = type9;
                JavaType javaType3 = JavaType.MESSAGE;
                Type type10 = new Type("GROUP", 9, javaType3);
                GROUP = type10;
                Type type11 = new Type("MESSAGE", 10, javaType3);
                MESSAGE = type11;
                Type type12 = new Type("BYTES", 11, JavaType.BYTE_STRING);
                BYTES = type12;
                Type type13 = new Type("UINT32", 12, javaType2);
                UINT32 = type13;
                Type type14 = new Type("ENUM", 13, JavaType.ENUM);
                ENUM = type14;
                Type type15 = new Type("SFIXED32", 14, javaType2);
                SFIXED32 = type15;
                Type type16 = new Type("SFIXED64", 15, javaType);
                SFIXED64 = type16;
                Type type17 = new Type("SINT32", 16, javaType2);
                SINT32 = type17;
                Type type18 = new Type("SINT64", 17, javaType);
                SINT64 = type18;
                $VALUES = new Type[]{type, type2, type3, type4, type5, type6, type7, type8, type9, type10, type11, type12, type13, type14, type15, type16, type17, type18};
            }

            private Type(String str, int i10, JavaType javaType) {
                this.javaType = javaType;
            }

            public static Type valueOf(String str) {
                return (Type) Enum.valueOf(Type.class, str);
            }

            public static Type[] values() {
                return (Type[]) $VALUES.clone();
            }

            public JavaType getJavaType() {
                return this.javaType;
            }

            public DescriptorProtos.FieldDescriptorProto.Type toProto() {
                return DescriptorProtos.FieldDescriptorProto.Type.forNumber(ordinal() + 1);
            }

            public static Type valueOf(DescriptorProtos.FieldDescriptorProto.Type type) {
                return values()[type.getNumber() - 1];
            }
        }

        static {
            if (Type.values().length == DescriptorProtos.FieldDescriptorProto.Type.values().length) {
                return;
            }
            throw new RuntimeException("descriptor.proto has a new declared type but Descriptors.java wasn't updated.");
        }

        /* synthetic */ FieldDescriptor(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i10, boolean z10, AnonymousClass1 anonymousClass1) throws DescriptorValidationException {
            this(fieldDescriptorProto, fileDescriptor, descriptor, i10, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void crossLink() throws DescriptorValidationException {
            if (this.proto.M()) {
                GenericDescriptor lookupSymbol = this.file.pool.lookupSymbol(this.proto.C(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
                if (lookupSymbol instanceof Descriptor) {
                    this.containingType = (Descriptor) lookupSymbol;
                    if (!getContainingType().isExtensionNumber(getNumber())) {
                        throw new DescriptorValidationException(this, '\"' + getContainingType().getFullName() + "\" does not declare " + getNumber() + " as an extension number.", (AnonymousClass1) null);
                    }
                } else {
                    throw new DescriptorValidationException(this, '\"' + this.proto.C() + "\" is not a message type.", (AnonymousClass1) null);
                }
            }
            if (this.proto.V()) {
                GenericDescriptor lookupSymbol2 = this.file.pool.lookupSymbol(this.proto.K(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
                if (!this.proto.U()) {
                    if (lookupSymbol2 instanceof Descriptor) {
                        this.type = Type.MESSAGE;
                    } else if (lookupSymbol2 instanceof EnumDescriptor) {
                        this.type = Type.ENUM;
                    } else {
                        throw new DescriptorValidationException(this, '\"' + this.proto.K() + "\" is not a type.", (AnonymousClass1) null);
                    }
                }
                if (getJavaType() == JavaType.MESSAGE) {
                    if (lookupSymbol2 instanceof Descriptor) {
                        this.messageType = (Descriptor) lookupSymbol2;
                        if (this.proto.L()) {
                            throw new DescriptorValidationException(this, "Messages can't have default values.", (AnonymousClass1) null);
                        }
                    } else {
                        throw new DescriptorValidationException(this, '\"' + this.proto.K() + "\" is not a message type.", (AnonymousClass1) null);
                    }
                } else if (getJavaType() == JavaType.ENUM) {
                    if (lookupSymbol2 instanceof EnumDescriptor) {
                        this.enumType = (EnumDescriptor) lookupSymbol2;
                    } else {
                        throw new DescriptorValidationException(this, '\"' + this.proto.K() + "\" is not an enum type.", (AnonymousClass1) null);
                    }
                } else {
                    throw new DescriptorValidationException(this, "Field with primitive type has type_name.", (AnonymousClass1) null);
                }
            } else if (getJavaType() == JavaType.MESSAGE || getJavaType() == JavaType.ENUM) {
                throw new DescriptorValidationException(this, "Field with message or enum type missing type_name.", (AnonymousClass1) null);
            }
            if (this.proto.H().D() && !isPackable()) {
                throw new DescriptorValidationException(this, "[packed = true] can only be specified for repeated primitive fields.", (AnonymousClass1) null);
            }
            if (this.proto.L()) {
                if (!isRepeated()) {
                    try {
                        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[getType().ordinal()]) {
                            case 1:
                            case 2:
                            case 3:
                                this.defaultValue = Integer.valueOf(TextFormat.parseInt32(this.proto.B()));
                                break;
                            case 4:
                            case 5:
                                this.defaultValue = Integer.valueOf(TextFormat.parseUInt32(this.proto.B()));
                                break;
                            case 6:
                            case 7:
                            case 8:
                                this.defaultValue = Long.valueOf(TextFormat.parseInt64(this.proto.B()));
                                break;
                            case 9:
                            case 10:
                                this.defaultValue = Long.valueOf(TextFormat.parseUInt64(this.proto.B()));
                                break;
                            case 11:
                                if (this.proto.B().equals("inf")) {
                                    this.defaultValue = Float.valueOf(Float.POSITIVE_INFINITY);
                                    break;
                                } else if (this.proto.B().equals("-inf")) {
                                    this.defaultValue = Float.valueOf(Float.NEGATIVE_INFINITY);
                                    break;
                                } else if (this.proto.B().equals("nan")) {
                                    this.defaultValue = Float.valueOf(Float.NaN);
                                    break;
                                } else {
                                    this.defaultValue = Float.valueOf(this.proto.B());
                                    break;
                                }
                            case 12:
                                if (this.proto.B().equals("inf")) {
                                    this.defaultValue = Double.valueOf(Double.POSITIVE_INFINITY);
                                    break;
                                } else if (this.proto.B().equals("-inf")) {
                                    this.defaultValue = Double.valueOf(Double.NEGATIVE_INFINITY);
                                    break;
                                } else if (this.proto.B().equals("nan")) {
                                    this.defaultValue = Double.valueOf(Double.NaN);
                                    break;
                                } else {
                                    this.defaultValue = Double.valueOf(this.proto.B());
                                    break;
                                }
                            case 13:
                                this.defaultValue = Boolean.valueOf(this.proto.B());
                                break;
                            case 14:
                                this.defaultValue = this.proto.B();
                                break;
                            case 15:
                                try {
                                    this.defaultValue = TextFormat.unescapeBytes(this.proto.B());
                                    break;
                                } catch (TextFormat.InvalidEscapeSequenceException e10) {
                                    throw new DescriptorValidationException(this, "Couldn't parse default value: " + e10.getMessage(), e10, null);
                                }
                            case 16:
                                EnumValueDescriptor findValueByName = this.enumType.findValueByName(this.proto.B());
                                this.defaultValue = findValueByName;
                                if (findValueByName == null) {
                                    throw new DescriptorValidationException(this, "Unknown enum default value: \"" + this.proto.B() + '\"', (AnonymousClass1) null);
                                }
                                break;
                            case 17:
                            case 18:
                                throw new DescriptorValidationException(this, "Message type had default value.", (AnonymousClass1) null);
                        }
                    } catch (NumberFormatException e11) {
                        throw new DescriptorValidationException(this, "Could not parse default value: \"" + this.proto.B() + '\"', e11, null);
                    }
                } else {
                    throw new DescriptorValidationException(this, "Repeated fields cannot have default values.", (AnonymousClass1) null);
                }
            } else if (isRepeated()) {
                this.defaultValue = Collections.emptyList();
            } else {
                int i10 = AnonymousClass1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType[getJavaType().ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        this.defaultValue = getJavaType().defaultDefault;
                    } else {
                        this.defaultValue = null;
                    }
                } else {
                    this.defaultValue = this.enumType.getValues().get(0);
                }
            }
            if (!isExtension()) {
                this.file.pool.addFieldByNumber(this);
            }
            Descriptor descriptor = this.containingType;
            if (descriptor != null && descriptor.getOptions().z()) {
                if (isExtension()) {
                    if (!isOptional() || getType() != Type.MESSAGE) {
                        throw new DescriptorValidationException(this, "Extensions of MessageSets must be optional messages.", (AnonymousClass1) null);
                    }
                    return;
                }
                throw new DescriptorValidationException(this, "MessageSets cannot have fields, only extensions.", (AnonymousClass1) null);
            }
        }

        private static String fieldNameToJsonName(String str) {
            int length = str.length();
            StringBuilder sb2 = new StringBuilder(length);
            boolean z10 = false;
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = str.charAt(i10);
                if (charAt == '_') {
                    z10 = true;
                } else if (z10) {
                    if ('a' <= charAt && charAt <= 'z') {
                        charAt = (char) (charAt - ' ');
                    }
                    sb2.append(charAt);
                    z10 = false;
                } else {
                    sb2.append(charAt);
                }
            }
            return sb2.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto) {
            this.proto = fieldDescriptorProto;
        }

        public OneofDescriptor getContainingOneof() {
            return this.containingOneof;
        }

        public Descriptor getContainingType() {
            return this.containingType;
        }

        public Object getDefaultValue() {
            if (getJavaType() != JavaType.MESSAGE) {
                return this.defaultValue;
            }
            throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
        }

        public Descriptor getExtensionScope() {
            if (isExtension()) {
                return this.extensionScope;
            }
            throw new UnsupportedOperationException(String.format("This field is not an extension. (%s)", this.fullName));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.fullName;
        }

        public int getIndex() {
            return this.index;
        }

        public JavaType getJavaType() {
            return this.type.getJavaType();
        }

        public String getJsonName() {
            return this.jsonName;
        }

        @Override // com.explorestack.protobuf.e0.c
        public WireFormat.JavaType getLiteJavaType() {
            return getLiteType().getJavaType();
        }

        @Override // com.explorestack.protobuf.e0.c
        public WireFormat.FieldType getLiteType() {
            return table[this.type.ordinal()];
        }

        public Descriptor getMessageType() {
            if (getJavaType() == JavaType.MESSAGE) {
                return this.messageType;
            }
            throw new UnsupportedOperationException(String.format("This field is not of message type. (%s)", this.fullName));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.proto.getName();
        }

        @Override // com.explorestack.protobuf.e0.c
        public int getNumber() {
            return this.proto.F();
        }

        public DescriptorProtos.FieldOptions getOptions() {
            return this.proto.H();
        }

        public OneofDescriptor getRealContainingOneof() {
            OneofDescriptor oneofDescriptor = this.containingOneof;
            if (oneofDescriptor != null && !oneofDescriptor.isSynthetic()) {
                return this.containingOneof;
            }
            return null;
        }

        public Type getType() {
            return this.type;
        }

        public boolean hasDefaultValue() {
            return this.proto.L();
        }

        public boolean hasOptionalKeyword() {
            if (!this.isProto3Optional && (this.file.getSyntax() != FileDescriptor.Syntax.PROTO2 || !isOptional() || getContainingOneof() != null)) {
                return false;
            }
            return true;
        }

        boolean hasPresence() {
            if (isRepeated()) {
                return false;
            }
            if (getType() != Type.MESSAGE && getType() != Type.GROUP && getContainingOneof() == null && this.file.getSyntax() != FileDescriptor.Syntax.PROTO2) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.e0.c
        public MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messageLite) {
            return ((Message.Builder) builder).mergeFrom((Message) messageLite);
        }

        public boolean isExtension() {
            return this.proto.M();
        }

        public boolean isMapField() {
            if (getType() == Type.MESSAGE && isRepeated() && getMessageType().getOptions().y()) {
                return true;
            }
            return false;
        }

        public boolean isOptional() {
            if (this.proto.E() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_OPTIONAL) {
                return true;
            }
            return false;
        }

        public boolean isPackable() {
            if (isRepeated() && getLiteType().isPackable()) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.e0.c
        public boolean isPacked() {
            if (!isPackable()) {
                return false;
            }
            if (getFile().getSyntax() == FileDescriptor.Syntax.PROTO2) {
                return getOptions().D();
            }
            if (getOptions().M() && !getOptions().D()) {
                return false;
            }
            return true;
        }

        @Override // com.explorestack.protobuf.e0.c
        public boolean isRepeated() {
            if (this.proto.E() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REPEATED) {
                return true;
            }
            return false;
        }

        public boolean isRequired() {
            if (this.proto.E() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REQUIRED) {
                return true;
            }
            return false;
        }

        public boolean needsUtf8Check() {
            if (this.type != Type.STRING) {
                return false;
            }
            if (getContainingType().getOptions().y() || getFile().getSyntax() == FileDescriptor.Syntax.PROTO3) {
                return true;
            }
            return getFile().getOptions().v0();
        }

        public String toString() {
            return getFullName();
        }

        private FieldDescriptor(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i10, boolean z10) throws DescriptorValidationException {
            super(null);
            this.index = i10;
            this.proto = fieldDescriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, descriptor, fieldDescriptorProto.getName());
            this.file = fileDescriptor;
            if (fieldDescriptorProto.N()) {
                this.jsonName = fieldDescriptorProto.D();
            } else {
                this.jsonName = fieldNameToJsonName(fieldDescriptorProto.getName());
            }
            if (fieldDescriptorProto.U()) {
                this.type = Type.valueOf(fieldDescriptorProto.J());
            }
            this.isProto3Optional = fieldDescriptorProto.I();
            if (getNumber() > 0) {
                if (z10) {
                    if (fieldDescriptorProto.M()) {
                        this.containingType = null;
                        if (descriptor != null) {
                            this.extensionScope = descriptor;
                        } else {
                            this.extensionScope = null;
                        }
                        if (!fieldDescriptorProto.P()) {
                            this.containingOneof = null;
                        } else {
                            throw new DescriptorValidationException(this, "FieldDescriptorProto.oneof_index set for extension field.", (AnonymousClass1) null);
                        }
                    } else {
                        throw new DescriptorValidationException(this, "FieldDescriptorProto.extendee not set for extension field.", (AnonymousClass1) null);
                    }
                } else if (!fieldDescriptorProto.M()) {
                    this.containingType = descriptor;
                    if (fieldDescriptorProto.P()) {
                        if (fieldDescriptorProto.G() >= 0 && fieldDescriptorProto.G() < descriptor.toProto().W()) {
                            OneofDescriptor oneofDescriptor = descriptor.getOneofs().get(fieldDescriptorProto.G());
                            this.containingOneof = oneofDescriptor;
                            OneofDescriptor.access$2008(oneofDescriptor);
                        } else {
                            throw new DescriptorValidationException(this, "FieldDescriptorProto.oneof_index is out of range for type " + descriptor.getName(), (AnonymousClass1) null);
                        }
                    } else {
                        this.containingOneof = null;
                    }
                    this.extensionScope = null;
                } else {
                    throw new DescriptorValidationException(this, "FieldDescriptorProto.extendee set for non-extension field.", (AnonymousClass1) null);
                }
                fileDescriptor.pool.addSymbol(this);
                return;
            }
            throw new DescriptorValidationException(this, "Field numbers must be positive integers.", (AnonymousClass1) null);
        }

        @Override // java.lang.Comparable
        public int compareTo(FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.containingType == this.containingType) {
                return getNumber() - fieldDescriptor.getNumber();
            }
            throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
        }

        /* renamed from: getEnumType */
        public EnumDescriptor m4629getEnumType() {
            if (getJavaType() == JavaType.ENUM) {
                return this.enumType;
            }
            throw new UnsupportedOperationException(String.format("This field is not of enum type. (%s)", this.fullName));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.FieldDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes3.dex */
    public static final class FileDescriptor extends GenericDescriptor {
        private final FileDescriptor[] dependencies;
        private final EnumDescriptor[] enumTypes;
        private final FieldDescriptor[] extensions;
        private final Descriptor[] messageTypes;
        private final DescriptorPool pool;
        private DescriptorProtos.FileDescriptorProto proto;
        private final FileDescriptor[] publicDependencies;
        private final ServiceDescriptor[] services;

        @Deprecated
        /* loaded from: classes3.dex */
        public interface InternalDescriptorAssigner {
            w assignDescriptors(FileDescriptor fileDescriptor);
        }

        /* loaded from: classes3.dex */
        public enum Syntax {
            UNKNOWN("unknown"),
            PROTO2("proto2"),
            PROTO3("proto3");
            
            private final String name;

            Syntax(String str) {
                this.name = str;
            }
        }

        private FileDescriptor(DescriptorProtos.FileDescriptorProto fileDescriptorProto, FileDescriptor[] fileDescriptorArr, DescriptorPool descriptorPool, boolean z10) throws DescriptorValidationException {
            super(null);
            this.pool = descriptorPool;
            this.proto = fileDescriptorProto;
            this.dependencies = (FileDescriptor[]) fileDescriptorArr.clone();
            HashMap hashMap = new HashMap();
            for (FileDescriptor fileDescriptor : fileDescriptorArr) {
                hashMap.put(fileDescriptor.getName(), fileDescriptor);
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < fileDescriptorProto.Y(); i10++) {
                int X = fileDescriptorProto.X(i10);
                if (X >= 0 && X < fileDescriptorProto.I()) {
                    String H = fileDescriptorProto.H(X);
                    FileDescriptor fileDescriptor2 = (FileDescriptor) hashMap.get(H);
                    if (fileDescriptor2 != null) {
                        arrayList.add(fileDescriptor2);
                    } else if (!z10) {
                        throw new DescriptorValidationException(this, "Invalid public dependency: " + H, (AnonymousClass1) null);
                    }
                } else {
                    throw new DescriptorValidationException(this, "Invalid public dependency index.", (AnonymousClass1) null);
                }
            }
            FileDescriptor[] fileDescriptorArr2 = new FileDescriptor[arrayList.size()];
            this.publicDependencies = fileDescriptorArr2;
            arrayList.toArray(fileDescriptorArr2);
            descriptorPool.addPackage(getPackage(), this);
            this.messageTypes = new Descriptor[fileDescriptorProto.S()];
            for (int i11 = 0; i11 < fileDescriptorProto.S(); i11++) {
                this.messageTypes[i11] = new Descriptor(fileDescriptorProto.Q(i11), this, null, i11, null);
            }
            this.enumTypes = new EnumDescriptor[fileDescriptorProto.L()];
            for (int i12 = 0; i12 < fileDescriptorProto.L(); i12++) {
                this.enumTypes[i12] = new EnumDescriptor(fileDescriptorProto.K(i12), this, null, i12, null);
            }
            this.services = new ServiceDescriptor[fileDescriptorProto.k0()];
            for (int i13 = 0; i13 < fileDescriptorProto.k0(); i13++) {
                this.services[i13] = new ServiceDescriptor(fileDescriptorProto.a0(i13), this, i13, null);
            }
            this.extensions = new FieldDescriptor[fileDescriptorProto.O()];
            for (int i14 = 0; i14 < fileDescriptorProto.O(); i14++) {
                this.extensions[i14] = new FieldDescriptor(fileDescriptorProto.N(i14), this, null, i14, true, null);
            }
        }

        public static FileDescriptor buildFrom(DescriptorProtos.FileDescriptorProto fileDescriptorProto, FileDescriptor[] fileDescriptorArr) throws DescriptorValidationException {
            return buildFrom(fileDescriptorProto, fileDescriptorArr, false);
        }

        private void crossLink() throws DescriptorValidationException {
            for (Descriptor descriptor : this.messageTypes) {
                descriptor.crossLink();
            }
            for (ServiceDescriptor serviceDescriptor : this.services) {
                serviceDescriptor.crossLink();
            }
            for (FieldDescriptor fieldDescriptor : this.extensions) {
                fieldDescriptor.crossLink();
            }
        }

        private static FileDescriptor[] findDescriptors(Class<?> cls, String[] strArr, String[] strArr2) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < strArr.length; i10++) {
                try {
                    arrayList.add((FileDescriptor) cls.getClassLoader().loadClass(strArr[i10]).getField("descriptor").get(null));
                } catch (Exception unused) {
                    Descriptors.logger.warning("Descriptors for \"" + strArr2[i10] + "\" can not be found.");
                }
            }
            return (FileDescriptor[]) arrayList.toArray(new FileDescriptor[0]);
        }

        @Deprecated
        public static void internalBuildGeneratedFileFrom(String[] strArr, FileDescriptor[] fileDescriptorArr, InternalDescriptorAssigner internalDescriptorAssigner) {
            byte[] latin1Cat = latin1Cat(strArr);
            try {
                DescriptorProtos.FileDescriptorProto I0 = DescriptorProtos.FileDescriptorProto.I0(latin1Cat);
                try {
                    FileDescriptor buildFrom = buildFrom(I0, fileDescriptorArr, true);
                    w assignDescriptors = internalDescriptorAssigner.assignDescriptors(buildFrom);
                    if (assignDescriptors != null) {
                        try {
                            buildFrom.setProto(DescriptorProtos.FileDescriptorProto.J0(latin1Cat, assignDescriptors));
                        } catch (InvalidProtocolBufferException e10) {
                            throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e10);
                        }
                    }
                } catch (DescriptorValidationException e11) {
                    throw new IllegalArgumentException("Invalid embedded descriptor for \"" + I0.getName() + "\".", e11);
                }
            } catch (InvalidProtocolBufferException e12) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e12);
            }
        }

        public static void internalUpdateFileDescriptor(FileDescriptor fileDescriptor, w wVar) {
            try {
                fileDescriptor.setProto(DescriptorProtos.FileDescriptorProto.H0(fileDescriptor.proto.toByteString(), wVar));
            } catch (InvalidProtocolBufferException e10) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e10);
            }
        }

        private static byte[] latin1Cat(String[] strArr) {
            if (strArr.length == 1) {
                return strArr[0].getBytes(i0.f14403b);
            }
            StringBuilder sb2 = new StringBuilder();
            for (String str : strArr) {
                sb2.append(str);
            }
            return sb2.toString().getBytes(i0.f14403b);
        }

        private void setProto(DescriptorProtos.FileDescriptorProto fileDescriptorProto) {
            this.proto = fileDescriptorProto;
            int i10 = 0;
            int i11 = 0;
            while (true) {
                Descriptor[] descriptorArr = this.messageTypes;
                if (i11 >= descriptorArr.length) {
                    break;
                }
                descriptorArr[i11].setProto(fileDescriptorProto.Q(i11));
                i11++;
            }
            int i12 = 0;
            while (true) {
                EnumDescriptor[] enumDescriptorArr = this.enumTypes;
                if (i12 >= enumDescriptorArr.length) {
                    break;
                }
                enumDescriptorArr[i12].setProto(fileDescriptorProto.K(i12));
                i12++;
            }
            int i13 = 0;
            while (true) {
                ServiceDescriptor[] serviceDescriptorArr = this.services;
                if (i13 >= serviceDescriptorArr.length) {
                    break;
                }
                serviceDescriptorArr[i13].setProto(fileDescriptorProto.a0(i13));
                i13++;
            }
            while (true) {
                FieldDescriptor[] fieldDescriptorArr = this.extensions;
                if (i10 < fieldDescriptorArr.length) {
                    fieldDescriptorArr[i10].setProto(fileDescriptorProto.N(i10));
                    i10++;
                } else {
                    return;
                }
            }
        }

        public EnumDescriptor findEnumTypeByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String str2 = getPackage();
            if (!str2.isEmpty()) {
                str = str2 + '.' + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str);
            if (!(findSymbol instanceof EnumDescriptor) || findSymbol.getFile() != this) {
                return null;
            }
            return (EnumDescriptor) findSymbol;
        }

        public FieldDescriptor findExtensionByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String str2 = getPackage();
            if (!str2.isEmpty()) {
                str = str2 + '.' + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str);
            if (!(findSymbol instanceof FieldDescriptor) || findSymbol.getFile() != this) {
                return null;
            }
            return (FieldDescriptor) findSymbol;
        }

        public Descriptor findMessageTypeByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String str2 = getPackage();
            if (!str2.isEmpty()) {
                str = str2 + '.' + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str);
            if (!(findSymbol instanceof Descriptor) || findSymbol.getFile() != this) {
                return null;
            }
            return (Descriptor) findSymbol;
        }

        public ServiceDescriptor findServiceByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String str2 = getPackage();
            if (!str2.isEmpty()) {
                str = str2 + '.' + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str);
            if (!(findSymbol instanceof ServiceDescriptor) || findSymbol.getFile() != this) {
                return null;
            }
            return (ServiceDescriptor) findSymbol;
        }

        public List<FileDescriptor> getDependencies() {
            return Collections.unmodifiableList(Arrays.asList(this.dependencies));
        }

        public List<EnumDescriptor> getEnumTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.enumTypes));
        }

        public List<FieldDescriptor> getExtensions() {
            return Collections.unmodifiableList(Arrays.asList(this.extensions));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.proto.getName();
        }

        public List<Descriptor> getMessageTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.messageTypes));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.proto.getName();
        }

        public DescriptorProtos.FileOptions getOptions() {
            return this.proto.V();
        }

        public String getPackage() {
            return this.proto.W();
        }

        public List<FileDescriptor> getPublicDependencies() {
            return Collections.unmodifiableList(Arrays.asList(this.publicDependencies));
        }

        public List<ServiceDescriptor> getServices() {
            return Collections.unmodifiableList(Arrays.asList(this.services));
        }

        public Syntax getSyntax() {
            Syntax syntax = Syntax.PROTO3;
            if (syntax.name.equals(this.proto.p0())) {
                return syntax;
            }
            return Syntax.PROTO2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean supportsUnknownEnumValue() {
            if (getSyntax() == Syntax.PROTO3) {
                return true;
            }
            return false;
        }

        public static FileDescriptor buildFrom(DescriptorProtos.FileDescriptorProto fileDescriptorProto, FileDescriptor[] fileDescriptorArr, boolean z10) throws DescriptorValidationException {
            FileDescriptor fileDescriptor = new FileDescriptor(fileDescriptorProto, fileDescriptorArr, new DescriptorPool(fileDescriptorArr, z10), z10);
            fileDescriptor.crossLink();
            return fileDescriptor;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.FileDescriptorProto toProto() {
            return this.proto;
        }

        public static FileDescriptor internalBuildGeneratedFileFrom(String[] strArr, FileDescriptor[] fileDescriptorArr) {
            DescriptorProtos.FileDescriptorProto fileDescriptorProto;
            try {
                try {
                    return buildFrom(DescriptorProtos.FileDescriptorProto.I0(latin1Cat(strArr)), fileDescriptorArr, true);
                } catch (DescriptorValidationException e10) {
                    throw new IllegalArgumentException("Invalid embedded descriptor for \"" + fileDescriptorProto.getName() + "\".", e10);
                }
            } catch (InvalidProtocolBufferException e11) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e11);
            }
        }

        @Deprecated
        public static void internalBuildGeneratedFileFrom(String[] strArr, Class<?> cls, String[] strArr2, String[] strArr3, InternalDescriptorAssigner internalDescriptorAssigner) {
            internalBuildGeneratedFileFrom(strArr, findDescriptors(cls, strArr2, strArr3), internalDescriptorAssigner);
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this;
        }

        public static FileDescriptor internalBuildGeneratedFileFrom(String[] strArr, Class<?> cls, String[] strArr2, String[] strArr3) {
            return internalBuildGeneratedFileFrom(strArr, findDescriptors(cls, strArr2, strArr3));
        }

        FileDescriptor(String str, Descriptor descriptor) throws DescriptorValidationException {
            super(null);
            DescriptorPool descriptorPool = new DescriptorPool(new FileDescriptor[0], true);
            this.pool = descriptorPool;
            DescriptorProtos.FileDescriptorProto.b y02 = DescriptorProtos.FileDescriptorProto.y0();
            this.proto = y02.P(descriptor.getFullName() + ".placeholder.proto").Q(str).a(descriptor.toProto()).build();
            this.dependencies = new FileDescriptor[0];
            this.publicDependencies = new FileDescriptor[0];
            this.messageTypes = new Descriptor[]{descriptor};
            this.enumTypes = new EnumDescriptor[0];
            this.services = new ServiceDescriptor[0];
            this.extensions = new FieldDescriptor[0];
            descriptorPool.addPackage(str, this);
            descriptorPool.addSymbol(descriptor);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class GenericDescriptor {
        /* synthetic */ GenericDescriptor(AnonymousClass1 anonymousClass1) {
            this();
        }

        public abstract FileDescriptor getFile();

        public abstract String getFullName();

        public abstract String getName();

        public abstract Message toProto();

        private GenericDescriptor() {
        }
    }

    /* loaded from: classes3.dex */
    public static final class MethodDescriptor extends GenericDescriptor {
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private Descriptor inputType;
        private Descriptor outputType;
        private DescriptorProtos.MethodDescriptorProto proto;
        private final ServiceDescriptor service;

        /* synthetic */ MethodDescriptor(DescriptorProtos.MethodDescriptorProto methodDescriptorProto, FileDescriptor fileDescriptor, ServiceDescriptor serviceDescriptor, int i10, AnonymousClass1 anonymousClass1) throws DescriptorValidationException {
            this(methodDescriptorProto, fileDescriptor, serviceDescriptor, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void crossLink() throws DescriptorValidationException {
            DescriptorPool descriptorPool = this.file.pool;
            String t10 = this.proto.t();
            DescriptorPool.SearchFilter searchFilter = DescriptorPool.SearchFilter.TYPES_ONLY;
            GenericDescriptor lookupSymbol = descriptorPool.lookupSymbol(t10, this, searchFilter);
            if (lookupSymbol instanceof Descriptor) {
                this.inputType = (Descriptor) lookupSymbol;
                GenericDescriptor lookupSymbol2 = this.file.pool.lookupSymbol(this.proto.v(), this, searchFilter);
                if (lookupSymbol2 instanceof Descriptor) {
                    this.outputType = (Descriptor) lookupSymbol2;
                    return;
                }
                throw new DescriptorValidationException(this, '\"' + this.proto.v() + "\" is not a message type.", (AnonymousClass1) null);
            }
            throw new DescriptorValidationException(this, '\"' + this.proto.t() + "\" is not a message type.", (AnonymousClass1) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.MethodDescriptorProto methodDescriptorProto) {
            this.proto = methodDescriptorProto;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.fullName;
        }

        public int getIndex() {
            return this.index;
        }

        public Descriptor getInputType() {
            return this.inputType;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.proto.getName();
        }

        public DescriptorProtos.MethodOptions getOptions() {
            return this.proto.u();
        }

        public Descriptor getOutputType() {
            return this.outputType;
        }

        public ServiceDescriptor getService() {
            return this.service;
        }

        public boolean isClientStreaming() {
            return this.proto.q();
        }

        public boolean isServerStreaming() {
            return this.proto.y();
        }

        private MethodDescriptor(DescriptorProtos.MethodDescriptorProto methodDescriptorProto, FileDescriptor fileDescriptor, ServiceDescriptor serviceDescriptor, int i10) throws DescriptorValidationException {
            super(null);
            this.index = i10;
            this.proto = methodDescriptorProto;
            this.file = fileDescriptor;
            this.service = serviceDescriptor;
            this.fullName = serviceDescriptor.getFullName() + '.' + methodDescriptorProto.getName();
            fileDescriptor.pool.addSymbol(this);
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.MethodDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes3.dex */
    public static final class OneofDescriptor extends GenericDescriptor {
        private Descriptor containingType;
        private int fieldCount;
        private FieldDescriptor[] fields;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private DescriptorProtos.OneofDescriptorProto proto;

        /* synthetic */ OneofDescriptor(DescriptorProtos.OneofDescriptorProto oneofDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i10, AnonymousClass1 anonymousClass1) throws DescriptorValidationException {
            this(oneofDescriptorProto, fileDescriptor, descriptor, i10);
        }

        static /* synthetic */ int access$2008(OneofDescriptor oneofDescriptor) {
            int i10 = oneofDescriptor.fieldCount;
            oneofDescriptor.fieldCount = i10 + 1;
            return i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.OneofDescriptorProto oneofDescriptorProto) {
            this.proto = oneofDescriptorProto;
        }

        public Descriptor getContainingType() {
            return this.containingType;
        }

        public FieldDescriptor getField(int i10) {
            return this.fields[i10];
        }

        public int getFieldCount() {
            return this.fieldCount;
        }

        public List<FieldDescriptor> getFields() {
            return Collections.unmodifiableList(Arrays.asList(this.fields));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.fullName;
        }

        public int getIndex() {
            return this.index;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.proto.getName();
        }

        public DescriptorProtos.OneofOptions getOptions() {
            return this.proto.i();
        }

        public boolean isSynthetic() {
            FieldDescriptor[] fieldDescriptorArr = this.fields;
            if (fieldDescriptorArr.length != 1 || !fieldDescriptorArr[0].isProto3Optional) {
                return false;
            }
            return true;
        }

        private OneofDescriptor(DescriptorProtos.OneofDescriptorProto oneofDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i10) throws DescriptorValidationException {
            super(null);
            this.proto = oneofDescriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, descriptor, oneofDescriptorProto.getName());
            this.file = fileDescriptor;
            this.index = i10;
            this.containingType = descriptor;
            this.fieldCount = 0;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.OneofDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes3.dex */
    public static final class ServiceDescriptor extends GenericDescriptor {
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private MethodDescriptor[] methods;
        private DescriptorProtos.ServiceDescriptorProto proto;

        /* synthetic */ ServiceDescriptor(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto, FileDescriptor fileDescriptor, int i10, AnonymousClass1 anonymousClass1) throws DescriptorValidationException {
            this(serviceDescriptorProto, fileDescriptor, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void crossLink() throws DescriptorValidationException {
            for (MethodDescriptor methodDescriptor : this.methods) {
                methodDescriptor.crossLink();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto) {
            this.proto = serviceDescriptorProto;
            int i10 = 0;
            while (true) {
                MethodDescriptor[] methodDescriptorArr = this.methods;
                if (i10 < methodDescriptorArr.length) {
                    methodDescriptorArr[i10].setProto(serviceDescriptorProto.k(i10));
                    i10++;
                } else {
                    return;
                }
            }
        }

        public MethodDescriptor findMethodByName(String str) {
            DescriptorPool descriptorPool = this.file.pool;
            GenericDescriptor findSymbol = descriptorPool.findSymbol(this.fullName + '.' + str);
            if (findSymbol instanceof MethodDescriptor) {
                return (MethodDescriptor) findSymbol;
            }
            return null;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getFullName() {
            return this.fullName;
        }

        public int getIndex() {
            return this.index;
        }

        public List<MethodDescriptor> getMethods() {
            return Collections.unmodifiableList(Arrays.asList(this.methods));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public String getName() {
            return this.proto.getName();
        }

        public DescriptorProtos.ServiceOptions getOptions() {
            return this.proto.n();
        }

        private ServiceDescriptor(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto, FileDescriptor fileDescriptor, int i10) throws DescriptorValidationException {
            super(null);
            this.index = i10;
            this.proto = serviceDescriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, null, serviceDescriptorProto.getName());
            this.file = fileDescriptor;
            this.methods = new MethodDescriptor[serviceDescriptorProto.getMethodCount()];
            for (int i11 = 0; i11 < serviceDescriptorProto.getMethodCount(); i11++) {
                this.methods[i11] = new MethodDescriptor(serviceDescriptorProto.k(i11), fileDescriptor, this, i11, null);
            }
            fileDescriptor.pool.addSymbol(this);
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public DescriptorProtos.ServiceDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String computeFullName(FileDescriptor fileDescriptor, Descriptor descriptor, String str) {
        if (descriptor != null) {
            return descriptor.getFullName() + '.' + str;
        }
        String str2 = fileDescriptor.getPackage();
        if (!str2.isEmpty()) {
            return str2 + '.' + str;
        }
        return str;
    }
}
