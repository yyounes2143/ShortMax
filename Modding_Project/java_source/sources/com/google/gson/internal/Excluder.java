package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder DEFAULT = new Excluder();
    private static final double IGNORE_VERSIONS = -1.0d;
    private boolean requireExpose;
    private double version = IGNORE_VERSIONS;
    private int modifiers = 136;
    private boolean serializeInnerClasses = true;
    private List<ExclusionStrategy> serializationStrategies = Collections.emptyList();
    private List<ExclusionStrategy> deserializationStrategies = Collections.emptyList();

    private static boolean isInnerClass(Class<?> cls) {
        if (cls.isMemberClass() && !ReflectionHelper.isStatic(cls)) {
            return true;
        }
        return false;
    }

    private boolean isValidSince(Since since) {
        if (since == null) {
            return true;
        }
        if (this.version >= since.value()) {
            return true;
        }
        return false;
    }

    private boolean isValidUntil(Until until) {
        if (until == null) {
            return true;
        }
        if (this.version < until.value()) {
            return true;
        }
        return false;
    }

    private boolean isValidVersion(Since since, Until until) {
        if (isValidSince(since) && isValidUntil(until)) {
            return true;
        }
        return false;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(final Gson gson, final TypeToken<T> typeToken) {
        Class<? super T> rawType = typeToken.getRawType();
        final boolean excludeClass = excludeClass(rawType, true);
        final boolean excludeClass2 = excludeClass(rawType, false);
        if (!excludeClass && !excludeClass2) {
            return null;
        }
        return new TypeAdapter<T>() { // from class: com.google.gson.internal.Excluder.1
            private volatile TypeAdapter<T> delegate;

            private TypeAdapter<T> delegate() {
                TypeAdapter<T> typeAdapter = this.delegate;
                if (typeAdapter == null) {
                    TypeAdapter<T> delegateAdapter = gson.getDelegateAdapter(Excluder.this, typeToken);
                    this.delegate = delegateAdapter;
                    return delegateAdapter;
                }
                return typeAdapter;
            }

            @Override // com.google.gson.TypeAdapter
            public T read(JsonReader jsonReader) throws IOException {
                if (excludeClass2) {
                    jsonReader.skipValue();
                    return null;
                }
                return delegate().read(jsonReader);
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, T t10) throws IOException {
                if (excludeClass) {
                    jsonWriter.nullValue();
                } else {
                    delegate().write(jsonWriter, t10);
                }
            }
        };
    }

    public Excluder disableInnerClassSerialization() {
        Excluder m4672clone = m4672clone();
        m4672clone.serializeInnerClasses = false;
        return m4672clone;
    }

    public boolean excludeClass(Class<?> cls, boolean z10) {
        List<ExclusionStrategy> list;
        if (this.version != IGNORE_VERSIONS && !isValidVersion((Since) cls.getAnnotation(Since.class), (Until) cls.getAnnotation(Until.class))) {
            return true;
        }
        if (!this.serializeInnerClasses && isInnerClass(cls)) {
            return true;
        }
        if (!z10 && !Enum.class.isAssignableFrom(cls) && ReflectionHelper.isAnonymousOrNonStaticLocal(cls)) {
            return true;
        }
        if (z10) {
            list = this.serializationStrategies;
        } else {
            list = this.deserializationStrategies;
        }
        for (ExclusionStrategy exclusionStrategy : list) {
            if (exclusionStrategy.shouldSkipClass(cls)) {
                return true;
            }
        }
        return false;
    }

    public boolean excludeField(Field field, boolean z10) {
        List<ExclusionStrategy> list;
        Expose expose;
        if ((this.modifiers & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.version != IGNORE_VERSIONS && !isValidVersion((Since) field.getAnnotation(Since.class), (Until) field.getAnnotation(Until.class))) || field.isSynthetic()) {
            return true;
        }
        if ((this.requireExpose && ((expose = (Expose) field.getAnnotation(Expose.class)) == null || (!z10 ? !expose.deserialize() : !expose.serialize()))) || excludeClass(field.getType(), z10)) {
            return true;
        }
        if (z10) {
            list = this.serializationStrategies;
        } else {
            list = this.deserializationStrategies;
        }
        if (!list.isEmpty()) {
            FieldAttributes fieldAttributes = new FieldAttributes(field);
            for (ExclusionStrategy exclusionStrategy : list) {
                if (exclusionStrategy.shouldSkipField(fieldAttributes)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public Excluder excludeFieldsWithoutExposeAnnotation() {
        Excluder m4672clone = m4672clone();
        m4672clone.requireExpose = true;
        return m4672clone;
    }

    public Excluder withExclusionStrategy(ExclusionStrategy exclusionStrategy, boolean z10, boolean z11) {
        Excluder m4672clone = m4672clone();
        if (z10) {
            ArrayList arrayList = new ArrayList(this.serializationStrategies);
            m4672clone.serializationStrategies = arrayList;
            arrayList.add(exclusionStrategy);
        }
        if (z11) {
            ArrayList arrayList2 = new ArrayList(this.deserializationStrategies);
            m4672clone.deserializationStrategies = arrayList2;
            arrayList2.add(exclusionStrategy);
        }
        return m4672clone;
    }

    public Excluder withModifiers(int... iArr) {
        Excluder m4672clone = m4672clone();
        m4672clone.modifiers = 0;
        for (int i10 : iArr) {
            m4672clone.modifiers = i10 | m4672clone.modifiers;
        }
        return m4672clone;
    }

    public Excluder withVersion(double d10) {
        Excluder m4672clone = m4672clone();
        m4672clone.version = d10;
        return m4672clone;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: clone */
    public Excluder m4672clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }
}
