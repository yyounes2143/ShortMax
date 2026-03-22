package com.huawei.hms.core.aidl;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MessageCodec.java */
/* loaded from: classes5.dex */
public class f {
    private Bundle a(String str, Bundle bundle, Object obj) {
        Bundle bundle2 = new Bundle();
        j(str, obj, bundle2);
        bundle.putBundle("_next_item_", bundle2);
        return bundle2;
    }

    private Object b(Field field, Bundle bundle) {
        String name = field.getName();
        Object obj = bundle.get(name);
        if (obj instanceof Bundle) {
            try {
                Bundle bundle2 = (Bundle) obj;
                int i10 = bundle2.getInt("_val_type_", -1);
                if (i10 == 1) {
                    return h(field.getGenericType(), bundle2);
                }
                if (i10 == 0) {
                    return f((Bundle) obj, (e) field.getType().newInstance());
                }
            } catch (Exception unused) {
                Log.e("MessageCodec", "decode, read value of the field exception, field name: " + name);
                return null;
            }
        }
        return obj;
    }

    private void c(e eVar, Field field, Bundle bundle) throws IllegalAccessException {
        Object b10 = b(field, bundle);
        if (b10 != null) {
            boolean isAccessible = field.isAccessible();
            field.setAccessible(true);
            field.set(eVar, b10);
            field.setAccessible(isAccessible);
        }
    }

    private boolean d(String str, Object obj, Bundle bundle) {
        if (obj instanceof String) {
            bundle.putString(str, (String) obj);
            return true;
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Integer) obj).intValue());
            return true;
        } else if (obj instanceof Short) {
            bundle.putShort(str, ((Short) obj).shortValue());
            return true;
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return true;
        } else if (obj instanceof Float) {
            bundle.putFloat(str, ((Float) obj).floatValue());
            return true;
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return true;
        } else if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            return true;
        } else {
            return false;
        }
    }

    private void e(e eVar, Field field, Bundle bundle) throws IllegalAccessException {
        boolean isAccessible = field.isAccessible();
        field.setAccessible(true);
        j(field.getName(), field.get(eVar), bundle);
        field.setAccessible(isAccessible);
    }

    public e f(Bundle bundle, e eVar) {
        Field[] declaredFields;
        if (bundle == null) {
            return eVar;
        }
        bundle.setClassLoader(getClass().getClassLoader());
        for (Class<?> cls = eVar.getClass(); cls != null; cls = cls.getSuperclass()) {
            for (Field field : cls.getDeclaredFields()) {
                if (field.isAnnotationPresent(wa.a.class)) {
                    try {
                        c(eVar, field, bundle);
                    } catch (IllegalAccessException | IllegalArgumentException unused) {
                        Log.e("MessageCodec", "decode, set value of the field exception, field name:" + field.getName());
                    }
                }
            }
        }
        return eVar;
    }

    public Bundle g(e eVar, Bundle bundle) {
        Field[] declaredFields;
        if (eVar == null) {
            return bundle;
        }
        for (Class<?> cls = eVar.getClass(); cls != null; cls = cls.getSuperclass()) {
            for (Field field : cls.getDeclaredFields()) {
                if (field.isAnnotationPresent(wa.a.class)) {
                    try {
                        e(eVar, field, bundle);
                    } catch (IllegalAccessException | IllegalArgumentException unused) {
                        Log.e("MessageCodec", "encode, get value of the field exception, field name: " + field.getName());
                    }
                }
            }
        }
        return bundle;
    }

    protected List<Object> h(Type type, Bundle bundle) throws InstantiationException, IllegalAccessException {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle2 = bundle.getBundle("_next_item_"); bundle2 != null; bundle2 = bundle2.getBundle("_next_item_")) {
            Object obj = bundle2.get("_value_");
            if (!obj.getClass().isPrimitive() && !(obj instanceof String) && !(obj instanceof Serializable)) {
                if (obj instanceof Bundle) {
                    Bundle bundle3 = (Bundle) obj;
                    int i10 = bundle3.getInt("_val_type_", -1);
                    if (i10 != 1) {
                        if (i10 == 0) {
                            arrayList.add(f(bundle3, (e) ((Class) ((ParameterizedType) type).getActualTypeArguments()[0]).newInstance()));
                        } else {
                            throw new InstantiationException("Unknown type can not be supported");
                        }
                    } else {
                        throw new InstantiationException("Nested List can not be supported");
                    }
                } else {
                    continue;
                }
            } else {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    protected void i(String str, List list, Bundle bundle) {
        Bundle bundle2 = null;
        for (Object obj : list) {
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(str, bundle2);
                bundle2.putInt("_val_type_", 1);
            }
            bundle2 = a("_value_", bundle2, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j(String str, Object obj, Bundle bundle) {
        if (obj == null || d(str, obj, bundle)) {
            return;
        }
        if (obj instanceof CharSequence) {
            bundle.putCharSequence(str, (CharSequence) obj);
        } else if (obj instanceof Parcelable) {
            bundle.putParcelable(str, (Parcelable) obj);
        } else if (obj instanceof byte[]) {
            bundle.putByteArray(str, (byte[]) obj);
        } else if (obj instanceof List) {
            i(str, (List) obj, bundle);
        } else if (obj instanceof Serializable) {
            bundle.putSerializable(str, (Serializable) obj);
        } else if (obj instanceof e) {
            Bundle g10 = g((e) obj, new Bundle());
            g10.putInt("_val_type_", 0);
            bundle.putBundle(str, g10);
        } else {
            Log.e("MessageCodec", "cannot support type, " + str);
        }
    }
}
