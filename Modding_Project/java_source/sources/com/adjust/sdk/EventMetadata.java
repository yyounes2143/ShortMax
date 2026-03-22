package com.adjust.sdk;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class EventMetadata implements Serializable {
    private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("eventSequence", Map.class)};
    private static final long serialVersionUID = 1;
    private Map<String, Integer> eventSequence = new HashMap();

    private void readObject(ObjectInputStream objectInputStream) {
        this.eventSequence = (Map) Util.readObjectField(objectInputStream.readFields(), "eventSequence", new HashMap());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && Util.equalObject(this.eventSequence, ((EventMetadata) obj).eventSequence)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Util.hashObject(this.eventSequence, 17);
    }

    public int incrementSequenceForEvent(String str) {
        int i10;
        Integer num = this.eventSequence.get(str);
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 0;
        }
        int i11 = i10 + 1;
        this.eventSequence.put(str, Integer.valueOf(i11));
        return i11;
    }
}
